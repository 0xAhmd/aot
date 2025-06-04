import '../models/character_model.dart';
import 'package:hive/hive.dart';

class CharacterCacheManager {
  static const String boxName = 'characters_cache';

  static Future<Box> _openBox() async {
    return await Hive.openBox(boxName);
  }

  static Future<void> cacheCharactersPage(
    int page,
    List<CharacterModel> characters,
  ) async {
    final box = await _openBox();

    final cacheData = {
      'timestamp': DateTime.now().millisecondsSinceEpoch,
      'characters': characters,
    };

    await box.put('page_$page', cacheData);
  }

  static Future<List<CharacterModel>?> getCachedCharactersPage(int page) async {
    final box = await _openBox();

    final cacheData = box.get('page_$page');
    if (cacheData == null) {
      return null;
    }

    final timestamp = cacheData['timestamp'] as int;
    final cachedCharacters = (cacheData['characters'] as List)
        .cast<CharacterModel>();

    final isExpired =
        DateTime.now().millisecondsSinceEpoch - timestamp > 12 * 60 * 60 * 1000;

    if (isExpired) {
      await box.delete('page_$page');

      return null;
    }

    return cachedCharacters;
  }
}
