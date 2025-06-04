//cspell:disable
import 'package:aot/features/organaizations/data/local_data_src/org_cache_manager.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/models/organaizations.dart';
import '../../data/repo/organizations_repo.dart';

part 'organizations_state.dart';

class OrganizationsCubit extends Cubit<OrganizationsState> {
  final OrganizationsRepo organizationsRepo;
  int _currentPage = 1;
  bool _hasMore = true;
  bool _isFetching = false;
  final List<Organaizations> _organizations = [];

  OrganizationsCubit(this.organizationsRepo) : super(OrganizationsInitial());

  Future<void> getOrganizations({
    bool loadMore = false,
    bool refresh = false,
  }) async {
    if (refresh) {
      OrganizationCacheManager.clearCache();
    }
    if (_isFetching || (!_hasMore && loadMore)) return;
    _isFetching = true;

    if (!loadMore) {
      _currentPage = 1;
      _organizations.clear();
      _hasMore = true;
      emit(OrganizationsLoading());
    }

    try {
      final data = await organizationsRepo.getOrganizations(page: _currentPage);
      final info = data['info'];
      final results = data['results'] as List<Organaizations>;

      _organizations.addAll(results);
      _hasMore = info['next_page'] != null;
      _currentPage++;

      emit(OrganizationsLoaded(organaizations: List.from(_organizations)));
    } catch (e) {
      emit(OrganizationsError(errorMessage: e.toString()));
    } finally {
      _isFetching = false;
    }
  }

  void searchOrganizations(String query) {
    if (query.isEmpty) {
      emit(OrganizationsLoaded(organaizations: List.from(_organizations)));
    } else {
      final lowerQuery = query.toLowerCase();
      final filtered = _organizations
          .where((org) => org.name.toLowerCase().contains(lowerQuery))
          .toList();

      emit(OrganizationsLoaded(organaizations: filtered));
    }
  }
}
