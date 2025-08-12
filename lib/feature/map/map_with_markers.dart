import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:go_router/go_router.dart';
import 'package:latlong2/latlong.dart';

class MapWithMarkers extends StatelessWidget {
   MapWithMarkers({
    super.key,
    required this.initialCenter,
    required this.markers,
    required this.place,
  });
  final LatLng initialCenter;
  final List<Marker> markers;
  final Map<String, dynamic> place;
  final MapController _mapController = MapController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FlutterMap(
          mapController: _mapController,
          options: MapOptions(initialCenter: initialCenter, minZoom: 14),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'com.example.loci',
            ),
            MarkerLayer(markers: markers),
          ],
        ),
        Positioned(
          top: 10,
          left: 10,
          child: FloatingActionButton(
            mini: true,
            backgroundColor: Colors.white,
            onPressed: () => {},
            child: const Icon(Icons.arrow_back, color: Colors.black),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Card(
            margin: EdgeInsets.zero,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    place['display_name'] ?? 'Неизвестно',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text('Координаты: ${place['lat']}, ${place['lon']}'),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            final lat = place['lat'];
                            final lon = place['lon'];
                            context.push('/reviews?lat=$lat&lon=$lon');
                          },
                          child: const Text('Посмотреть отзывы'),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            final placeName = Uri.encodeComponent(
                              place['display_name'] ?? '',
                            );
                            final lat = place['lat'];
                            final lon = place['lon'];
                            context.push(
                              '/addReview?placeName=$placeName&lat=$lat&lon=$lon',
                            );
                          },
                          child: const Text('Добавить отзыв'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
