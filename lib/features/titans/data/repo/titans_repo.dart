import '../api/titans_web_services.dart';
import '../models/titans_model.dart';

class TitansRepo {
  final TitanWebServices webService;
  TitansRepo({required this.webService});
  Future<List<Titan>> getTitans() async {
    final response = await webService
        .getTitans(); // this is a Map<String, dynamic>

    final results =
        response['results'] as List<dynamic>; // ✅ safely access the list

    return results.map((e) => Titan.fromJson(e)).toList();
  }
}
