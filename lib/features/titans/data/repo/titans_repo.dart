import '../api/titans_web_services.dart';
import '../models/titans_model.dart';
import '../local_data_src/t_cache_manager.dart';

class TitansRepo {
  final TitanWebServices webService;
  TitansRepo({required this.webService});

  Future<List<Titan>> getTitans() async {
    // 1. Try to get from cache first
    final cachedTitans = await TitanCacheManager.getCachedTitans();
    if (cachedTitans != null && cachedTitans.isNotEmpty) {
      return cachedTitans;
    }

    // 2. If not cached, fetch from API
    final response = await webService.getTitans();
    final results = response['results'] as List<dynamic>;
    final titans = results.map((e) => Titan.fromJson(e)).toList();

    // 3. Cache the fetched data
    await TitanCacheManager.cacheTitans(titans);

    return titans;
  }
}
