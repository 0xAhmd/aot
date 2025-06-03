import 'package:aot/features/titans/data/models/titans_model.dart';
import 'package:aot/features/titans/data/repo/titans_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'titans_state.dart';

class TitansCubit extends Cubit<TitansState> {
  final TitansRepo repository;
  TitansCubit(this.repository) : super(TitansInitial());
  Future<void> getTitans() async {
    emit(TitansLoading());
    try {
      final titans = await repository.getTitans();
      emit(TitansLoaded(titans: titans));
    } catch (e) {
      emit(TitansError(message: e.toString()));
    }
  }
}
