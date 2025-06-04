import 'package:aot/features/titans/data/models/titans_model.dart';
import 'package:hive/hive.dart';

class TitanCacheManager {
  static const String boxName = 'titans_cache';

  static Future<Box> _openBox() async {
    return await Hive.openBox(boxName);
  }

  static Future<void> cacheTitans(List<Titan> titans) async {
    final box = await _openBox();

    final cacheData = {
      'timestamp': DateTime.now().millisecondsSinceEpoch,
      'titans': titans,
    };

    await box.put('all', cacheData);
  }

  static Future<List<Titan>?> getCachedTitans() async {
    final box = await _openBox();

    final cacheData = box.get('all');
    if (cacheData == null) {
      return null;
    }

    final timestamp = cacheData['timestamp'] as int;
    final cachedTitans = (cacheData['titans'] as List).cast<Titan>();

    final isExpired =
        DateTime.now().millisecondsSinceEpoch - timestamp > 12 * 60 * 60 * 1000;

    if (isExpired) {
      await box.delete('all');
      return null;
    }

    return cachedTitans;
  }

  static Future<void> clearCache() async {
    final box = await _openBox();
    await box.delete('all');
  }
}
