import 'package:aot/features/characters/presentation/cubit/characters_cubit.dart';
import 'package:aot/features/characters/presentation/widgets/character_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Widget buildCharacterList() {
  return BlocBuilder<CharactersCubit, CharactersState>(
    builder: (context, state) {
      if (state is CharactersLoading || state is CharactersInitial) {
        return const Center(child: CupertinoActivityIndicator());
      } else if (state is CharactersLoaded) {
        final characters = state.characters;

        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 12),
          itemCount: characters.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) {
            final character = characters[index];
            return CharacterCard(
              imageUrl: character.img ?? '',
              title: character.name ?? '',
            );
          },
        );
      } else if (state is CharactersError) {
        return Center(
          child: Text(
            "Error: ${state.message}",
            style: const TextStyle(color: Colors.red),
          ),
        );
      } else {
        return const Center(child: Text("Unknown error"));
      }
    },
  );
}
