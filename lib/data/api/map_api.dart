import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:loci/data/models/place/place_dto.dart';

class MapApi {
  final String baseUrl = 'https://nominatim.openstreetmap.org/search';

  Future<List<PlaceDto>> searchPlaces(String query) async {
    if (query.isEmpty) return [];

    final url = Uri.parse(
      '$baseUrl?q=$query+Минск&format=json&limit=100&countrycodes=by',
    );

    final response = await http.get(
      url,
      headers: {'User-Agent': 'flutter_app_example'},
    );

    if (response.statusCode == 200) {
      final List data = json.decode(response.body) as List;
      return data
          .map((e) => PlaceDto.fromJson(e as Map<String, dynamic>))
          .toList();
    } else {
      throw Exception('Failed to load places');
    }
  }
}
