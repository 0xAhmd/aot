import 'package:aot/features/titans/data/local_data_src/t_cache_manager.dart';

import '../../data/models/titans_model.dart';
import '../../data/repo/titans_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'titans_state.dart';

class TitansCubit extends Cubit<TitansState> {
  final TitansRepo repository;
  List<Titan> _allTitans = [];

  TitansCubit(this.repository) : super(TitansInitial());

  Future<void> getTitans({bool refresh = false}) async {
    emit(TitansLoading());
    try {
      if (refresh) {
        await TitanCacheManager.clearCache(); // You need to implement this method
      }
      _allTitans = await repository.getTitans();
      emit(TitansLoaded(titans: _allTitans));
    } catch (e) {
      emit(TitansError(message: e.toString()));
    }
  }

  void searchTitans(String query) {
    final filtered = _allTitans
        .where(
          (titan) => titan.name!.toLowerCase().contains(query.toLowerCase()),
        )
        .toList();

    emit(TitansLoaded(titans: filtered));
  }
}
