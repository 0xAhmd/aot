import 'package:aot/features/characters/data/api/character_web_services.dart';
import 'package:aot/features/characters/data/local_data_src/cache_manager.dart';
import 'package:aot/features/characters/data/models/character_model.dart';

class CharactersRepo {
  final CharacterWebServices characterWebServices;

  CharactersRepo({required this.characterWebServices});

  Future<Map<String, dynamic>> getCharacters({int page = 1}) async {
    // Try load from cache first
    final cachedCharacters =
        await CharacterCacheManager.getCachedCharactersPage(page);
    if (cachedCharacters != null) {
      // Return cached data (fake info here, adjust if you cache info too)
      return {
        'info': {'pages': 10}, // Change to real if you cache it
        'results': cachedCharacters,
      };
    }

    // No cache or expired -> Fetch from API
    final response = await characterWebServices.getCharacters(page: page);
    final info = response['info'] as Map<String, dynamic>;
    final results = (response['results'] as List<dynamic>)
        .map((e) => CharacterModel.fromJson(e))
        .toList();

    // Cache the new results
    await CharacterCacheManager.cacheCharactersPage(page, results);

    return {'info': info, 'results': results};
  }
}
