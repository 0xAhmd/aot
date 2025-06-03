import 'package:aot/features/characters/data/api/character_web_services.dart';
import 'package:aot/features/characters/data/models/character_model.dart';

class CharactersRepo {
  final CharacterWebServices characterWebServices;

  CharactersRepo({required this.characterWebServices});

  Future<List<CharacterModel>> getCharacters() async {
    final response = await characterWebServices
        .getCharacters(); // this is a Map<String, dynamic>

    final results =
        response['results'] as List<dynamic>; // ✅ safely access the list

    return results.map((e) => CharacterModel.fromJson(e)).toList();
  }
}
