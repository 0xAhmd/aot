import '../models/location_model.dart';
import 'package:hive/hive.dart';

class LocationCacheManager {
  static const String boxName = 'locations_cache';

  // Open or create the Hive box for caching
  static Future<Box> _openBox() async {
    return await Hive.openBox(boxName);
  }

  /// Cache a page of locations with a timestamp and whether there are more pages
  static Future<void> cacheLocationsPage(
    int page,
    List<LocationModel> locations,
    bool hasMore,
  ) async {
    final box = await _openBox();

    final cacheData = {
      'timestamp': DateTime.now().millisecondsSinceEpoch,
      'locations': locations.map((e) => e.toJson()).toList(),
      'hasMore': hasMore,
    };

    await box.put('page_$page', cacheData);
  }

  static Future<Map<String, dynamic>?> getCachedLocationsPage(int page) async {
    final box = await _openBox();
    final dynamic rawData = box.get('page_$page');

    if (rawData == null || rawData is! Map) {
      return null;
    }

    final int? timestamp = rawData['timestamp'] as int?;
    if (timestamp == null) {
      // Invalid cache, remove it
      await box.delete('page_$page');
      return null;
    }

    // Cache expiration: 12 hours (in milliseconds)
    final bool isExpired =
        DateTime.now().millisecondsSinceEpoch - timestamp > 12 * 60 * 60 * 1000;
    if (isExpired) {
      await box.delete('page_$page');

      return null;
    }

    // Deserialize location list
    final List<dynamic>? locationList = rawData['locations'] as List<dynamic>?;
    final List<LocationModel> cachedLocations = locationList != null
        ? locationList
              .map((e) => LocationModel.fromJson(Map<String, dynamic>.from(e)))
              .toList()
        : [];

    final bool hasMore = rawData['hasMore'] as bool? ?? false;

    return {
      'info': {'next_page': hasMore ? 'dummy' : null},
      'results': cachedLocations,
    };
  }

    static Future<void> clearCache() async {
    final box = await _openBox();
    await box.clear();
  }
}
