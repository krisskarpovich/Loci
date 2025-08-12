import 'package:loci/data/models/place/place_dto.dart';
import 'package:loci/domain/entities/place.dart';

extension PlaceMapper on PlaceDto {
  Place toDomain() {
    return Place(
      displayName: displayName ?? 'Неизвестно',
      lat: double.tryParse(lat ?? '') ?? 0.0,
      lon: double.tryParse(lon ?? '') ?? 0.0,
    );
  }
}
