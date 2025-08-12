import 'dart:convert';
import 'package:http/http.dart' as http;

class MapRepository {
  final String baseUrl = 'https://nominatim.openstreetmap.org/search';
  //TODO add mapApi

  Future<List<Map<String, dynamic>>> searchPlaces(String query) async {
    if (query.isEmpty) return [];

    //TODO pagination
    final url = Uri.parse(
      '$baseUrl?q=$query+Минск&format=json&limit=100&countrycodes=by',
    );

    final response = await http.get(
      url,
      headers: {'User-Agent': 'flutter_app_example'},
    );

    if (response.statusCode == 200) {
      final List data = json.decode(response.body);
      return data.cast<Map<String, dynamic>>();
    } else {
      throw Exception('Failed to load places');
    }
  }
}
