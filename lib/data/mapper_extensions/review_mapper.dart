import 'package:loci/data/models/review/review_dto.dart';
import 'package:loci/domain/entities/review.dart';

extension ReviewDtoMapper on ReviewDto {
  Review toDomain() => Review(
    placeName: '',
    latitude: latitude,
    longitude: longitude,
    reviewText: reviewText,
    rating: rating,
  );
}

extension ReviewMapper on Review {
  ReviewDto toCreateDto() => ReviewDto(
    placeName: '',
    latitude: latitude,
    longitude: longitude,
    reviewText: reviewText,
    rating: rating,
  );
}
