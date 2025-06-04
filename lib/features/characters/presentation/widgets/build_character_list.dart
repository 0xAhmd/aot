import '../cubit/characters_cubit.dart';
import 'character_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharacterListWithPagination extends StatelessWidget {
  const CharacterListWithPagination({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharactersCubit, CharactersState>(
      builder: (context, state) {
        if (state is CharactersLoaded) {
          final characters = state.characters;

          return GridView.builder(
            shrinkWrap: true,
            physics:
                const NeverScrollableScrollPhysics(), // ✅ Prevent nested scroll
            itemCount: state.hasMore
                ? characters.length + 1
                : characters.length,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 0.75,
            ),
            itemBuilder: (context, index) {
              if (index < characters.length) {
                final char = characters[index];
                return CharacterCard(
                  character: char,
                  imageUrl: char.img ?? '',
                  title: char.name ?? '',
                );
              } else {
                return const Center(child: CupertinoActivityIndicator());
              }
            },
          );
        }

        return const SizedBox.shrink();
      },
    );
  }
}
