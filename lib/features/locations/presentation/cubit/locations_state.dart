part of 'locations_cubit.dart';

@immutable
sealed class LocationsState {}

final class LocationsInitial extends LocationsState {}

final class LocationsLoading extends LocationsState {}

final class LocationsLoaded extends LocationsState {
  final List<LocationModel> locations;
  final bool hasMore;

  LocationsLoaded({ required this.hasMore, required this.locations});
}

final class LocationsError extends LocationsState {
  final String errorMessage;

  LocationsError({required this.errorMessage});
}
