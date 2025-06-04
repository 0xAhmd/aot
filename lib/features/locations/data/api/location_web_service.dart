import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'location_web_service.g.dart';

@RestApi(baseUrl: 'https://api.attackontitanapi.com/')
abstract class LocationWebService {
  factory LocationWebService(Dio dio, {String baseUrl}) = _LocationWebService;
  @GET('locations')
  Future<dynamic> getLocations({@Query('page') int page = 1});
}
