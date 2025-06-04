import '../cubit/locations_cubit.dart';
import '../widgets/location_list_view_with_pagination.dart';
import '../widgets/main_locations_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _searchController = TextEditingController();
  bool _isSearching = false;

  @override
  void initState() {
    super.initState();
    context.read<LocationsCubit>().getLocations();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    final cubit = context.read<LocationsCubit>();
    final state = cubit.state;

    if (_scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent - 200 &&
        state is LocationsLoaded &&
        state.hasMore &&
        !_isSearching) {
      cubit.getLocations(loadMore: true);
    }
  }

  void _startSearch() {
    setState(() {
      _isSearching = true;
    });
  }

  void _stopSearch() {
    _searchController.clear();
    context.read<LocationsCubit>().searchLocations('');
    setState(() {
      _isSearching = false;
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LocationsCubit>();

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: _isSearching
            ? TextField(
                controller: _searchController,
                autofocus: true,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  hintText: 'Search Location...',
                  hintStyle: TextStyle(color: Colors.white54),
                  border: InputBorder.none,
                ),
                onChanged: cubit.searchLocations,
              )
            : const Text('AOT Fandom', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: Icon(
              _isSearching ? Icons.clear : Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              if (_isSearching) {
                _stopSearch();
              } else {
                _startSearch();
              }
            },
          ),
        ],
      ),
      body: BlocBuilder<LocationsCubit, LocationsState>(
        builder: (context, state) {
          if (state is LocationsLoading || state is LocationsInitial) {
            return const Center(child: CupertinoActivityIndicator());
          } else if (state is LocationsLoaded) {
            final locations = state.locations;
            if (locations.isEmpty) {
              return const Center(
                child: Text(
                  "No Location found",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              );
            }
            return CustomScrollView(
              controller: _scrollController,
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              slivers: [
                CupertinoSliverRefreshControl(
                  onRefresh: () async {
                    await Future.delayed(const Duration(milliseconds: 750));

                    await context.read<LocationsCubit>().getLocations(
                      refresh: true,
                    );
                  },
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate([
                      if (!_isSearching) ...[
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            "Main Locations",
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          ),
                        ),
                        const SizedBox(height: 12),
                        MainLocationsListView(locations: locations),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            "Locations",
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          ),
                        ),
                        const SizedBox(height: 12),
                      ],
                      const LocationListViewWithPagination(),
                    ]),
                  ),
                ),
              ],
            );
          } else if (state is LocationsError) {
            return Center(
              child: Text(
                "Error: ${state.errorMessage}",
                style: const TextStyle(color: Colors.red),
              ),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
