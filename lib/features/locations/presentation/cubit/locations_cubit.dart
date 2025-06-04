import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../data/models/location_model.dart';
import '../../data/repo/locations_repo.dart';

part 'locations_state.dart';

class LocationsCubit extends Cubit<LocationsState> {
  final LocationsRepo repo;
  int _currentPage = 1;
  bool _hasMore = true;
  bool _isFetching = false;
  final List<LocationModel> _locations = [];

  LocationsCubit(this.repo) : super(LocationsInitial());

  void searchLocations(String query) {
    if (query.isEmpty) {
      emit(
        LocationsLoaded(locations: List.from(_locations), hasMore: _hasMore),
      );
    } else {
      final lowerQuery = query.toLowerCase();
      final filteredLocations = _locations
          .where((loc) => loc.name.toLowerCase().contains(lowerQuery))
          .toList();

      emit(LocationsLoaded(locations: filteredLocations, hasMore: false));
    }
  }

  Future<void> getLocations({bool loadMore = false}) async {
    if (_isFetching || (!_hasMore && loadMore)) return;
    _isFetching = true;

    if (!loadMore) {
      _currentPage = 1;
      _locations.clear();
      _hasMore = true;
      emit(LocationsLoading());
    }

    try {
      final data = await repo.getLocations(page: _currentPage);
      final info = data['info'];
      final results = data['results'] as List<LocationModel>;

      _locations.addAll(results); // This is correct!
      _hasMore = info['next_page'] != null;
      _currentPage++;

      emit(
        LocationsLoaded(locations: List.from(_locations), hasMore: _hasMore),
      );
    } catch (e) {
      emit(LocationsError(errorMessage: e.toString()));
    } finally {
      _isFetching = false;
    }
  }
}
// ...existing code...
