import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loci/data/models/dto_annotations.dart';

part 'review_dto.freezed.dart';
part 'review_dto.g.dart';

@freezedDto
abstract class ReviewDto with _$ReviewDto {
  const factory ReviewDto({
    @JsonKey(name: 'place_name') required String placeName,
    @JsonKey(name: 'latitude') required double? latitude,
    @JsonKey(name: 'longitude') required double? longitude,
    @JsonKey(name: 'review_text') required String? reviewText,
    @JsonKey(name: 'rating') required double? rating,
  }) = _ReviewDto;

  factory ReviewDto.fromJson(Map<String, dynamic> json) =>
      _$ReviewDtoFromJson(json);
}
