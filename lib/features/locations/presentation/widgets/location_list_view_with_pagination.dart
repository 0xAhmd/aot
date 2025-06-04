import '../cubit/locations_cubit.dart';
import 'location_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LocationListViewWithPagination extends StatelessWidget {
  const LocationListViewWithPagination({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationsCubit, LocationsState>(
      builder: (context, state) {
        if (state is LocationsLoaded) {
          final locations = state.locations;

          return GridView.builder(
            shrinkWrap: true,
            physics:
                const NeverScrollableScrollPhysics(), // ✅ Prevent nested scroll
            itemCount: state.hasMore ? locations.length + 1 : locations.length,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 0.75,
            ),
            itemBuilder: (context, index) {
              if (index < locations.length) {
                final location = locations[index];
                return LocationCard(
                  locationModel: location,
                  imageUrl: location.img,
                  title: location.name,
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
