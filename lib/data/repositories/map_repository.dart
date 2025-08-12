import 'package:loci/data/api/map_api.dart';
import 'package:loci/data/mapper_extensions/place_mapper.dart';
import 'package:loci/domain/entities/place.dart';

class MapRepository {
  final MapApi api;

  MapRepository({required this.api});

  Future<List<Place>> searchPlaces(String query) async {
    final placesDto = await api.searchPlaces(query);
    return placesDto.map((place) => place.toDomain()).toList();
  }
}
