import '../../data/models/character_model.dart';
import 'main_characters_card.dart';
import 'package:flutter/material.dart';

class MainCharactersListView extends StatelessWidget {
  const MainCharactersListView({super.key, required this.characters});

  final List<CharacterModel> characters;

  static const List<String> mainCharacterNames = [
    'Eren Jaeger',
    'Levi Ackermann',
    'Mikasa Ackermann',
    'Armin Arlelt',
    'Erwin Smith',
    'Hange Zoë',
    'Reiner Braun',
    'Zeke Jaeger',
    'Jean Kirschtein',
    'Annie Leonhart',
    'Sasha Braus',
    'Historia Reiss',
    'Conny Springer',
    'Hannes',
    'Dot Pyxis',
    'Ymir Fritz',
    'Pieck Finger',
    'Kenny Ackermann',
  ];

  @override
  Widget build(BuildContext context) {
    // Filter only the main characters by name
    final filtered = characters
        .where((c) => mainCharacterNames.contains(c.name))
        .toList();

    // reverse it
    filtered.sort(
      (a, b) => mainCharacterNames
          .indexOf(a.name ?? '')
          .compareTo(mainCharacterNames.indexOf(b.name ?? '')),
    );

    return SizedBox(
      height: 220,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: filtered.length,
        itemBuilder: (context, index) {
          return MainCharactersCard(
            imageUrl: filtered[index].img ?? '',
            title: filtered[index].name ?? '',
          );
        },
      ),
    );
  }
}
