import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loci/data/repositories/map_repository.dart';
import 'package:loci/domain/entities/place.dart';
import 'package:loci/feature/map/cubit/search_place_cubit.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SearchPlaceCubit>(
          create: (context) => SearchPlaceCubit(GetIt.I.get<MapRepository>()),
        ),
      ],
      child: const MinskSearchScreen(),
    );
  }
}

class MinskSearchScreen extends StatefulWidget {
  const MinskSearchScreen({super.key});

  @override
  State<MinskSearchScreen> createState() => _MinskSearchScreenState();
}

class _MinskSearchScreenState extends State<MinskSearchScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Поиск по Минску')),
      body: BlocBuilder<SearchPlaceCubit, SearchPlaceState>(
        builder: (context, state) {
          if (state is SearchPlaceLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is SearchPlaceError) {
            return Center(child: Text('Ошибка: ${state.message}'));
          } else if (state is SearchPlaceLoaded) {
            return SearchScreen(
              searchController: _searchController,
              places: state.places,
            );
          } else {
            return SearchScreen(
              searchController: _searchController,
              places: const [],
            );
          }
        },
      ),
    );
  }
}

class SearchScreen extends StatelessWidget {
  const SearchScreen({
    super.key,
    required this.places,
    required this.searchController,
  });

  final List<Place> places;
  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: searchController,
                  decoration: const InputDecoration(
                    hintText: 'Введите запрос (театр, кино...)',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              ElevatedButton(
                onPressed: () {
                  final query = searchController.text;
                  context.read<SearchPlaceCubit>().searchPlaces(query);
                },
                child: const Text('Поиск'),
              ),
            ],
          ),
        ),
        Expanded(
          child: places.isEmpty
              ? const Center(child: Text('Место не найдено'))
              : ListView.builder(
                  itemCount: places.length,
                  itemBuilder: (context, index) {
                    final place = places[index];
                    return Card(
                      child: ListTile(
                        title: Text(
                          place.displayName ?? 'Неизвестно',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: Text(
                          'Координаты: ${place.lat}, ${place.lon}',
                        ),
                        onTap: () {
                          final place = places[index];

                          context.push('/markers', extra: place);
                        },
                      ),
                    );
                  },
                ),
        ),
      ],
    );
  }
}
