import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loci/data/models/dto_annotations.dart';

part 'review_dto.freezed.dart';
part 'review_dto.g.dart';

@freezedDto
abstract class ReviewDto with _$ReviewDto {
  const factory ReviewDto({
    required String placeName,
    required double? latitude,
    required double? longitude,
    required String? reviewText,
    required double? rating,
  }) = _ReviewDto;

  factory ReviewDto.fromJson(Map<String, dynamic> json) =>
      _$ReviewDtoFromJson(json);
}
