import 'package:aot/features/characters/data/models/character_model.dart';
import 'package:aot/features/characters/data/repository/characters_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharactersRepo repo;
  int _currentPage = 1;
  bool _hasMore = true;
  bool _isFetching = false;

  final List<CharacterModel> _priorityCharactersLoaded = [];
  final List<CharacterModel> _regularCharacters = [];

  List<CharacterModel> get characters => [
    ..._priorityCharactersLoaded,
    ..._regularCharacters,
  ];
  List<CharacterModel> _filteredCharacters = [];

  void searchCharacters(String query) {
    if (query.isEmpty) {
      emit(
        CharactersLoaded(
          characters: [..._priorityCharactersLoaded, ..._regularCharacters],
          hasMore: _hasMore,
        ),
      );
    } else {
      final lowerQuery = query.toLowerCase();
      _filteredCharacters = characters
          .where((c) => c.name?.toLowerCase().contains(lowerQuery) ?? false)
          .toList();

      emit(
        CharactersLoaded(
          characters: List.from(_filteredCharacters),
          hasMore: false,
        ),
      );
    }
  }

  final List<String> _priorityOrder = [
    'eren jaeger',
    'levi ackermann',
    'mikasa ackermann',
    'armin arlelt',
    'erwin smith',
    'hange zoë',
    'reiner braun',
    'zeke jaeger',
    'jean kirschtein',
    'annie leonhart',
    'sasha braus',
    'historia reiss',
    'conny springer',
    'hannes',
    'dot pyxis',
    'ymir fritz',
    'pieck finger',
    'kenny ackermann',
    'carla jaeger',
    'marco bodt',
    'petra rall',
    'falco grice',
    'nicolo',
    'mike',
    'onyankopon',
    'frieda reiss',
    'eren kruger',
  ];

  CharactersCubit(this.repo) : super(CharactersInitial());

  Future<void> getCharacters({bool loadMore = false}) async {
    if (_isFetching || (!_hasMore && loadMore)) return;
    _isFetching = true;

    if (!loadMore) {
      _currentPage = 1;
      _priorityCharactersLoaded.clear();
      _regularCharacters.clear();
      _hasMore = true;
      emit(CharactersLoading());
    }

    try {
      final data = await repo.getCharacters(page: _currentPage);
      final info = data['info'];
      final results = data['results'] as List<CharacterModel>;

      for (var character in results) {
        final name = character.name?.toLowerCase() ?? '';

        if (_priorityOrder.contains(name)) {
          // Avoid duplicates
          if (!_priorityCharactersLoaded.any(
            (c) => c.name?.toLowerCase() == name,
          )) {
            _priorityCharactersLoaded.add(character);
          }
        } else {
          if (!_regularCharacters.any((c) => c.name?.toLowerCase() == name)) {
            _regularCharacters.add(character);
          }
        }
      }

      _currentPage++;
      _hasMore = _currentPage <= (info['pages'] ?? 1);

      // Sort both lists
      _priorityCharactersLoaded.sort((a, b) {
        return _priorityOrder
            .indexOf(a.name!.toLowerCase())
            .compareTo(_priorityOrder.indexOf(b.name!.toLowerCase()));
      });

      _regularCharacters.sort(
        (a, b) => (a.name ?? '').toLowerCase().compareTo(
          (b.name ?? '').toLowerCase(),
        ),
      );

      emit(
        CharactersLoaded(
          characters: [..._priorityCharactersLoaded, ..._regularCharacters],
          hasMore: _hasMore,
        ),
      );
    } catch (e) {
      emit(CharactersError(message: e.toString()));
    } finally {
      _isFetching = false;
    }
  }
}
