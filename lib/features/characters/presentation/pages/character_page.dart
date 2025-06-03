import 'package:aot/features/characters/presentation/cubit/characters_cubit.dart';
import 'package:aot/features/characters/presentation/widgets/build_character_list.dart';
import 'package:aot/features/characters/presentation/widgets/main_characters_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharacterPage extends StatefulWidget {
  const CharacterPage({super.key});

  @override
  State<CharacterPage> createState() => _CharacterPageState();
}

class _CharacterPageState extends State<CharacterPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    context.read<CharactersCubit>().getCharacters();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    final cubit = context.read<CharactersCubit>();
    final state = cubit.state;

    if (_scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent - 200 &&
        state is CharactersLoaded &&
        state.hasMore) {
      cubit.getCharacters(loadMore: true);
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CharactersCubit, CharactersState>(
        builder: (context, state) {
          if (state is CharactersLoading || state is CharactersInitial) {
            return const Center(child: CupertinoActivityIndicator());
          } else if (state is CharactersLoaded) {
            final characters = state.characters;

            return ListView(
              controller: _scrollController,
              padding: const EdgeInsets.symmetric(vertical: 20),
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text("Main Characters",
                      style: TextStyle(color: Colors.white, fontSize: 24)),
                ),
                const SizedBox(height: 12),
                MainCharactersListView(characters: characters),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text("Characters",
                      style: TextStyle(color: Colors.white, fontSize: 24)),
                ),
                const SizedBox(height: 12),
                CharacterListWithPagination(), // ✅ now self-contained grid
              ],
            );
          } else if (state is CharactersError) {
            return Center(
              child: Text("Error: ${state.message}",
                  style: const TextStyle(color: Colors.red)),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
