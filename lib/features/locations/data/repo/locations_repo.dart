import 'package:aot/features/locations/data/api/location_web_service.dart';
import 'package:aot/features/locations/data/models/location_model.dart';

class LocationsRepo {
  final LocationWebService locationWebService;

  LocationsRepo({required this.locationWebService});

  Future<Map<String, dynamic>> getLocation({int page = 1}) async {
    // No cache or expired -> Fetch from API
    final response = await locationWebService.getLocations(page: page);
    final info = response['info'] as Map<String, dynamic>;
    final results = (response['results'] as List<dynamic>)
        .map((e) => LocationModel.fromJson(e))
        .toList();

    return {'info': info, 'results': results};
  }
}
