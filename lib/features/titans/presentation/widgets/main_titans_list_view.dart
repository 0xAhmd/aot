import '../../data/models/titans_model.dart';
import 'main_titans_card.dart';
import 'package:flutter/material.dart';

class MainTitansListView extends StatelessWidget {
  const MainTitansListView({super.key, required this.titans});

  final List<Titan> titans;

  static const List<String> _mainTitanNames = [
    'Attack Titan',
    'Armored Titan',
    'War Hammer Titan',
    'Founding Titan',
  ];

  @override
  Widget build(BuildContext context) {
    // Filter and reverse the titans list
    final filteredTitans = titans
        .where((titan) => _mainTitanNames.contains(titan.name))
        .toList()
        .reversed
        .toList();

    return SizedBox(
      height: 220,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: filteredTitans.length,
        itemBuilder: (context, index) {
          return MainTitansCard(
            imageUrl: filteredTitans[index].img ?? '',
            title: filteredTitans[index].name ?? '',
          );
        },
      ),
    );
  }
}
