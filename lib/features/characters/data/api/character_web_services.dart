import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'character_web_services.g.dart';
@RestApi(baseUrl: 'https://api.attackontitanapi.com/')
abstract class CharacterWebServices {
  factory CharacterWebServices(Dio dio, {String baseUrl}) = _CharacterWebServices;

  @GET('characters')
  Future<dynamic> getCharacters({@Query('page') int page = 1});
}