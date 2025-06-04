//cspell:disable
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'organizations_web_service.g.dart';

@RestApi(baseUrl: 'https://api.attackontitanapi.com/')
abstract class OrganizationsWebService {
  factory OrganizationsWebService(Dio dio, {String baseUrl}) =
      _OrganizationsWebService;

  @GET('organizations')
  Future<dynamic> getOrgznizations({@Query('page') int page = 1});
}
