import 'package:aot/features/organaizations/data/api/organizations_web_service.dart';
import 'package:aot/features/organaizations/data/models/organaizations.dart';

class OrganizationsRepo {
  final OrganizationsWebService organizationsWebService;

  OrganizationsRepo({required this.organizationsWebService});

  Future<List<Organaizations>> getOrgznizations() async {
    final response = await organizationsWebService.getOrgznizations();
    final results = response['results'] as List;
    return results.map((json) => Organaizations.fromJson(json)).toList();
  }
}
