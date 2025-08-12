// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loci/data/models/dto_annotations.dart';

part 'place_dto.freezed.dart';
part 'place_dto.g.dart';

@freezedDto
abstract class PlaceDto with _$PlaceDto {
  const factory PlaceDto({
    @JsonKey(name: 'display_name') required String? displayName,
    required String? lat,
    required String? lon,
  }) = _PlaceDto;

  factory PlaceDto.fromJson(Map<String, dynamic> json) =>
      _$PlaceDtoFromJson(json);
}
