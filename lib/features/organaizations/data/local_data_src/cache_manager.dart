import 'package:aot/features/organaizations/data/models/organaizations.dart';
import 'package:hive/hive.dart';

class OrganizationCacheManager {
  static const String boxName = 'organizations_cache';

  static Future<Box> _openBox() async {
    return await Hive.openBox(boxName);
  }

  static Future<void> cacheOrganizationsPage(
    int page,
    List<Organaizations> organizations,
  ) async {
    final box = await _openBox();

    final cacheData = {
      'timestamp': DateTime.now().millisecondsSinceEpoch,
      'organizations': organizations,
    };

    await box.put('page_$page', cacheData);
    print('Cached ${organizations.length} organizations for page $page');
  }

  static Future<List<Organaizations>?> getCachedOrganizationsPage(
    int page,
  ) async {
    final box = await _openBox();

    final cacheData = box.get('page_$page');
    if (cacheData == null) {
      print('No cache found for page $page');
      return null;
    }

    final timestamp = cacheData['timestamp'] as int;
    final cachedOrganizations = (cacheData['organizations'] as List)
        .cast<Organaizations>();

    final isExpired =
        DateTime.now().millisecondsSinceEpoch - timestamp > 12 * 60 * 60 * 1000;

    if (isExpired) {
      await box.delete('page_$page');
      print('Cache expired for page $page, deleted cache');
      return null;
    }

    print(
      'Loaded ${cachedOrganizations.length} organizations from cache for page $page',
    );
    return cachedOrganizations;
  }
}
