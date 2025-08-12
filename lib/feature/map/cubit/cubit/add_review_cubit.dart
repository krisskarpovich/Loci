import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loci/data/repositories/review_repository.dart';
import 'package:loci/domain/entities/review.dart';

part 'add_review_cubit.freezed.dart';

class AddReviewCubit extends Cubit<AddReviewState> {
  final ReviewRepository repository;

  AddReviewCubit(this.repository) : super(AddReviewInitial());

  Future<void> saveReview({required Review review, File? imageFile}) async {
    emit(AddReviewLoading());
    try {
      await repository.addReview(review: review, imageFile: imageFile);
      emit(AddReviewSuccess());
    } catch (e) {
      emit(AddReviewError(e.toString()));
    }
  }
}

@freezed
class AddReviewState with _$AddReviewState {
  const factory AddReviewState.initial() = AddReviewInitial;
  const factory AddReviewState.loading() = AddReviewLoading;
  const factory AddReviewState.success() = AddReviewSuccess;
  const factory AddReviewState.error(String message) = AddReviewError;
}
