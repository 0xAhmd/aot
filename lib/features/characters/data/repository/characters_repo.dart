import 'package:aot/features/characters/data/api/character_web_services.dart';
import 'package:aot/features/characters/data/models/character_model.dart';

class CharactersRepo {
  final CharacterWebServices characterWebServices;

  CharactersRepo({required this.characterWebServices});

  Future<Map<String, dynamic>> getCharacters({int page = 1}) async {
    final response = await characterWebServices.getCharacters(page: page);

    print("Raw API response: $response");

    final info = response['info'] as Map<String, dynamic>;
    final results = response['results'] as List<dynamic>;

    return {
      'info': info,
      'results': results.map((e) => CharacterModel.fromJson(e)).toList(),
    };
  }
}
