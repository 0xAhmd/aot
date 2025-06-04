//cspell:disable
import 'features/locations/data/api/location_web_service.dart';
import 'features/locations/data/repo/locations_repo.dart';
import 'features/locations/presentation/cubit/locations_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'features/characters/data/api/character_web_services.dart';
import 'features/characters/data/repository/characters_repo.dart';
import 'features/characters/presentation/cubit/characters_cubit.dart';
import 'features/organaizations/data/api/organizations_web_service.dart';
import 'features/organaizations/data/repo/organizations_repo.dart';
import 'features/organaizations/presentation/cubit/organizations_cubit.dart';
import 'features/titans/data/api/titans_web_services.dart';
import 'features/titans/data/repo/titans_repo.dart';
import 'features/titans/presentation/cubit/titans_cubit.dart';

final sl = GetIt.instance;

void setupLocator() {
  // Core
  sl.registerLazySingleton<Dio>(() => Dio());

  // Characters
  sl.registerLazySingleton<CharacterWebServices>(
    () => CharacterWebServices(sl()),
  );
  sl.registerLazySingleton<CharactersRepo>(
    () => CharactersRepo(characterWebServices: sl()),
  );
  sl.registerFactory<CharactersCubit>(() => CharactersCubit(sl()));

  // Organizations
  sl.registerLazySingleton<OrganizationsWebService>(
    () => OrganizationsWebService(sl()),
  );
  sl.registerLazySingleton<OrganizationsRepo>(
    () => OrganizationsRepo(organizationsWebService: sl()),
  );
  sl.registerFactory<OrganizationsCubit>(() => OrganizationsCubit(sl()));

  // Locations
  sl.registerLazySingleton<LocationWebService>(() => LocationWebService(sl()));
  sl.registerLazySingleton<LocationsRepo>(
    () => LocationsRepo(locationWebService: sl()),
  );
  sl.registerFactory<LocationsCubit>(() => LocationsCubit(sl()));

  // Titans
  sl.registerLazySingleton<TitanWebServices>(() => TitanWebServices(sl()));
  sl.registerLazySingleton<TitansRepo>(() => TitansRepo(webService: sl()));
  sl.registerFactory<TitansCubit>(() => TitansCubit(sl()));
}
