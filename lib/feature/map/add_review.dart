import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loci/data/repositories/review_repository.dart';
import 'package:loci/domain/entities/review.dart';
import 'package:loci/feature/map/cubit/cubit/add_review_cubit.dart';

class AddReviewScreen extends StatelessWidget {
  const AddReviewScreen({
    super.key,
    required this.placeName,
    required this.latitude,
    required this.longitude,
  });

  final String placeName;
  final double latitude;
  final double longitude;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddReviewCubit>(
      create: (context) => AddReviewCubit(GetIt.I.get<ReviewRepository>()),
      child: AddReviewView(
        placeName: placeName,
        latitude: latitude,
        longitude: longitude,
      ),
    );
  }
}

class AddReviewView extends StatefulWidget {
  final String placeName;
  final double latitude;
  final double longitude;

  const AddReviewView({
    super.key,
    required this.placeName,
    required this.latitude,
    required this.longitude,
  });

  @override
  State<AddReviewView> createState() => _AddReviewViewState();
}

class _AddReviewViewState extends State<AddReviewView> {
  final TextEditingController _reviewController = TextEditingController();
  double _rating = 0;
  File? _imageFile;

  final picker = ImagePicker();

  Future<void> _pickImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Добавить отзыв')),
      body: BlocConsumer<AddReviewCubit, AddReviewState>(
        listener: (context, state) {
          if (state is AddReviewSuccess) {
            Navigator.pop(context);
          } else if (state is AddReviewError) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('Ошибка: ${state.message}')));
          }
        },
        builder: (context, state) {
          final isLoading = state is AddReviewLoading;

          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Text(widget.placeName, style: const TextStyle(fontSize: 18)),
                const SizedBox(height: 10),
                RatingView(
                  rating: _rating,
                  onRatingSelected: (value) {
                    setState(() => _rating = value);
                  },
                ),
                TextField(
                  controller: _reviewController,
                  decoration: const InputDecoration(
                    labelText: 'Отзыв',
                    border: OutlineInputBorder(),
                  ),
                  maxLines: 3,
                ),
                const SizedBox(height: 10),
                _imageFile != null
                    ? Image.file(_imageFile!, height: 150)
                    : const SizedBox(),
                ElevatedButton.icon(
                  icon: const Icon(Icons.photo),
                  label: const Text('Прикрепить фото'),
                  onPressed: _pickImage,
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: isLoading
                      ? null
                      : () {
                          context.read<AddReviewCubit>().saveReview(
                            review: Review(
                              placeName: widget.placeName,
                              latitude: widget.latitude,
                              longitude: widget.longitude,
                              reviewText: _reviewController.text,
                              rating: _rating,
                            ),
                            imageFile: _imageFile,
                          );
                        },
                  child: isLoading
                      ? const CircularProgressIndicator()
                      : const Text('Сохранить'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class RatingView extends StatelessWidget {
  final double rating;
  final ValueChanged<double> onRatingSelected;

  const RatingView({
    super.key,
    required this.rating,
    required this.onRatingSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (index) {
        final starIndex = index + 1;
        return IconButton(
          icon: Icon(
            starIndex <= rating ? Icons.star : Icons.star_border,
            color: Colors.amber,
          ),
          onPressed: () => onRatingSelected(starIndex.toDouble()),
        );
      }),
    );
  }
}
