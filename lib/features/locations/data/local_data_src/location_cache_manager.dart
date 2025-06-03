import 'package:aot/features/locations/data/models/location_model.dart';
import 'package:hive/hive.dart';

class LocationCacheManager {
  static const String boxName = 'locations_cache';

  static Future<Box> _openBox() async {
    return await Hive.openBox<LocationModel>(boxName);
  }

  static Future<void> cacheLocationsPage(int page, List<LocationModel> locations) async {
    final box = await _openBox();

    final cacheData = {
      'timestamp': DateTime.now().millisecondsSinceEpoch,
      'locations': locations,
    };

    await box.put('page_$page', cacheData);
    print('Cached ${locations.length} locations for page $page');
  }

  static Future<List<LocationModel>?> getCachedLocationsPage(int page) async {
    final box = await _openBox();

    final cacheData = box.get('page_$page');
    if (cacheData == null) {
      print('No cache found for page $page');
      return null;
    }

    final timestamp = cacheData['timestamp'] as int;
    final cachedLocations = (cacheData['locations'] as List).cast<LocationModel>();

    final isExpired = DateTime.now().millisecondsSinceEpoch - timestamp > 12 * 60 * 60 * 1000;

    if (isExpired) {
      await box.delete('page_$page');
      print('Cache expired for page $page, deleted cache');
      return null;
    }

    print('Loaded ${cachedLocations.length} locations from cache for page $page');
    return cachedLocations;
  }
}