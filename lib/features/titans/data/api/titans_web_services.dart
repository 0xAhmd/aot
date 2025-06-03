import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'titans_web_services.g.dart';

@RestApi(baseUrl: 'https://api.attackontitanapi.com/')
abstract class TitanWebServices {
  factory TitanWebServices(Dio dio, {String baseUrl}) = _TitanWebServices;

  @GET('titans')
  Future<dynamic> getTitans();
}
