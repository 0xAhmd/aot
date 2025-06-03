import 'package:aot/features/locations/data/models/location_model.dart';
import 'package:aot/features/locations/presentation/widgets/main_locations_card.dart';
import 'package:flutter/material.dart';

class MainLocationsListView extends StatelessWidget {
  const MainLocationsListView({super.key, required this.locations});

  final List<LocationModel> locations;

  static const List<String> mainLocationsName = [
    'Basement',
    'Walls',
    'Eldia',
    'Underground Chapel',
    'Trost District',
    'Orvud District',
    'Paradis Island',
    'Ehrmich District',
  ];

  @override
  Widget build(BuildContext context) {
    // Filter only the main characters by name
    final filtered = locations
        .where((c) => mainLocationsName.contains(c.name))
        .toList();

    // reverse it
    filtered.sort(
      (a, b) => mainLocationsName
          .indexOf(a.name)
          .compareTo(mainLocationsName.indexOf(b.name)),
    );

    return SizedBox(
      height: 220,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: filtered.length,
        itemBuilder: (context, index) {
          return MainLocationsCard(
            imageUrl: filtered[index].img,
            title: filtered[index].name,
          );
        },
      ),
    );
  }
}
