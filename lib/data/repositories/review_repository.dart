import 'dart:io';
import 'package:loci/data/api/review_api.dart';
import 'package:loci/data/mapper_extensions/review_mapper.dart';
import 'package:loci/domain/entities/review.dart';

class ReviewRepository {
  final ReviewApi api;

  ReviewRepository({required this.api});

  Future<void> addReview({required Review review, File? imageFile}) async {
    try {
      //TODO add handling exeption
      await api.addReview(review.toCreateDto(), imageFile: imageFile);
    } catch (e, stackTrace) {
      print('Failed to add review: $e');
      print(stackTrace);

      rethrow;
    }
  }
}
