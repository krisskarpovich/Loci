import 'package:bloc/bloc.dart';
import 'package:loci/data/repositories/map_repository.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_place_cubit.freezed.dart';

class SearchPlaceCubit extends Cubit<SearchPlaceState> {
  final MapRepository repository;

  SearchPlaceCubit(this.repository) : super(const SearchPlaceState.initial());

  Future<void> searchPlaces(String query) async {
    if (query.isEmpty) return;

    emit(const SearchPlaceState.loading());
    try {
      final places = await repository.searchPlaces(query);
      emit(SearchPlaceState.loaded(places));
    } catch (e) {
      emit(SearchPlaceState.error(e.toString()));
    }
  }
}

@freezed
class SearchPlaceState with _$SearchPlaceState {
  const factory SearchPlaceState.initial() = SearchPlaceInitial;
  const factory SearchPlaceState.loading() = SearchPlaceLoading;
  const factory SearchPlaceState.loaded(List<Map<String, dynamic>> places) = SearchPlaceLoaded;
  const factory SearchPlaceState.error(String message) = SearchPlaceError;

}
