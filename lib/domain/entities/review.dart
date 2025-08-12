import 'package:freezed_annotation/freezed_annotation.dart';

part 'review.freezed.dart';

@freezed
abstract class Review with _$Review {
  const Review._();

  const factory Review({
    int? id,
    required String placeName,
    double? latitude,
    double? longitude,
    String? reviewText,
    double? rating,
  }) = _Review;
}
