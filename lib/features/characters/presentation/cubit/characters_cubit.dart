import 'package:aot/features/characters/data/models/character_model.dart';
import 'package:aot/features/characters/data/repository/characters_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharactersRepo repository;

  CharactersCubit(this.repository) : super(CharactersInitial());

  Future<void> getCharacters() async {
    emit(CharactersLoading());
    try {
      final characters = await repository.getCharacters();
      emit(CharactersLoaded(characters: characters));
    } catch (e) {
      emit(CharactersError(message: e.toString()));
    }
  }
}
