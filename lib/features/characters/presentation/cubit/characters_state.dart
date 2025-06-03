part of 'characters_cubit.dart';

@immutable
sealed class CharactersState {}

final class CharactersInitial extends CharactersState {}

final class CharactersLoading extends CharactersState {}

class CharactersLoaded extends CharactersState {
  final List<CharacterModel> characters;
  final bool hasMore;

  CharactersLoaded({required this.characters, required this.hasMore});
}

final class CharactersError extends CharactersState {
  final String message;

  CharactersError({required this.message});
}
