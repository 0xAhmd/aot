import 'package:aot/features/titans/data/models/titans_model.dart';
import 'package:aot/features/titans/data/repo/titans_repo.dart';
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
