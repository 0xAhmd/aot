import 'package:aot/features/characters/presentation/cubit/characters_cubit.dart';
import 'package:aot/features/titans/presentation/cubit/titans_cubit.dart';
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
  @override
  void initState() {
    super.initState();
    context.read<CharactersCubit>().getCharacters();
    context.read<TitansCubit>().getTitans();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<CharactersCubit, CharactersState>(
          builder: (context, charState) {
            if (charState is CharactersLoading ||
                charState is CharactersInitial) {
              return const Center(child: CupertinoActivityIndicator());
            } else if (charState is CharactersLoaded) {
              final characters = charState.characters;

              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          "Main Characters",
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                      ),
                      const SizedBox(height: 12),

                      MainCharactersListView(characters: characters),

                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          "Characters",
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                      ),
                      const SizedBox(height: 12),
                      buildCharacterList(),
                    ],
                  ),
                ),
              );
            } else if (charState is CharactersError) {
              return Center(
                child: Text(
                  "Error: ${charState.message}",
                  style: const TextStyle(color: Colors.red),
                ),
              );
            } else {
              return const Center(child: Text("Unknown error"));
            }
          },
        ),
      ),
    );
  }

  //! make pagination
  //! filter the main characters to display only top 10 character
  //! change characters UI to a grid view
  //! make the tab bar
  //! make the search bar
  //! splash screen and launcher icon
}
