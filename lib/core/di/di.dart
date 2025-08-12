import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:loci/data/api/review_api.dart';
import 'package:loci/data/repositories/map_repository.dart';
import 'package:loci/data/repositories/review_repository.dart';
import 'package:loci/feature/map/cubit/cubit/add_review_cubit.dart';
import 'package:loci/feature/map/cubit/search_place_cubit.dart';

final getIt = GetIt.instance;

void setupDI() {
  getIt.registerLazySingleton<MapRepository>(() => MapRepository());
  getIt.registerLazySingleton<FirebaseFirestore>(
    () => FirebaseFirestore.instance,
  );
  getIt.registerLazySingleton<FirebaseStorage>(() => FirebaseStorage.instance);

  getIt.registerLazySingleton<ReviewApi>(
    () => ReviewApi(
      firestore: getIt<FirebaseFirestore>(),
      storage: getIt<FirebaseStorage>(),
    ),
  );
  getIt.registerLazySingleton<ReviewRepository>(
    () => ReviewRepository(api: getIt<ReviewApi>()),
  );

  getIt.registerFactory<SearchPlaceCubit>(
    () => SearchPlaceCubit(getIt<MapRepository>()),
  );
  getIt.registerFactory<AddReviewCubit>(
    () => AddReviewCubit(getIt<ReviewRepository>()),
  );
}
