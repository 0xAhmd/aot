import 'package:aot/features/organaizations/data/api/organizations_web_service.dart';
import 'package:aot/features/organaizations/data/models/organaizations.dart';
import 'package:aot/features/organaizations/data/local_data_src/cache_manager.dart'; // adjust path if needed

class OrganizationsRepo {
  final OrganizationsWebService organizationsWebService;

  OrganizationsRepo({required this.organizationsWebService});

  Future<Map<String, dynamic>> getOrganizations({int page = 1}) async {
    // Try cache first
    final cached = await OrganizationCacheManager.getCachedOrganizationsPage(
      page,
    );
    if (cached != null) {
      return {
        'info': {'next_page': null}, // You may want to cache info as well
        'results': cached,
      };
    }

    // Fetch from API
    final response = await organizationsWebService.getOrgznizations(page: page);
    final info = response['info'] as Map<String, dynamic>;
    final results = (response['results'] as List<dynamic>)
        .map((e) => Organaizations.fromJson(e))
        .toList();

    // Cache the results
    await OrganizationCacheManager.cacheOrganizationsPage(page, results);

    return {'info': info, 'results': results};
  }
}
