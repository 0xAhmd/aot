import 'package:aot/features/locations/data/api/location_web_service.dart';
import 'package:aot/features/locations/data/models/location_model.dart';
import 'package:aot/features/locations/data/local_data_src/location_cache_manager.dart';

class LocationsRepo {
  final LocationWebService locationWebService;

  LocationsRepo({required this.locationWebService});

  Future<Map<String, dynamic>> getLocations({int page = 1}) async {
    // Try to get from cache first
    final cached = await LocationCacheManager.getCachedLocationsPage(page);
    if (cached != null) {
      return {
        'info': cached['info'], // use cached info
        'results': cached['results'], // use cached locations list directly
      };
    }

    // Fetch from API if not cached
    final response = await locationWebService.getLocations(page: page);
    final info = response['info'] as Map<String, dynamic>;
    final results = (response['results'] as List<dynamic>)
        .map((e) => LocationModel.fromJson(e))
        .toList();

    // Cache the results
    await LocationCacheManager.cacheLocationsPage(
      page,
      results,
      info['next_page'] != null,
    );

    return {'info': info, 'results': results};
  }
}
