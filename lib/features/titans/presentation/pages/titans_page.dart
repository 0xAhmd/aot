import '../cubit/titans_cubit.dart';
import '../widgets/build_titans_list.dart';
import '../widgets/main_titans_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TitansPage extends StatefulWidget {
  const TitansPage({super.key});

  @override
  State<TitansPage> createState() => _TitansPageState();
}

class _TitansPageState extends State<TitansPage> {
  final TextEditingController _searchController = TextEditingController();
  bool _isSearching = false;

  @override
  void initState() {
    super.initState();
    context.read<TitansCubit>().getTitans();
  }

  void _startSearch() {
    setState(() {
      _isSearching = true;
    });
  }

  void _stopSearch() {
    _searchController.clear();
    context.read<TitansCubit>().searchTitans('');
    setState(() {
      _isSearching = false;
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<TitansCubit>();

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: _isSearching
            ? TextField(
                controller: _searchController,
                autofocus: true,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  hintText: 'Search titan...',
                  hintStyle: TextStyle(color: Colors.white54),
                  border: InputBorder.none,
                ),
                onChanged: cubit.searchTitans,
              )
            : const Text('Titans', style: TextStyle(color: Colors.white)),
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
      body: SafeArea(
        child: BlocBuilder<TitansCubit, TitansState>(
          builder: (context, titanState) {
            if (titanState is TitansLoading || titanState is TitansInitial) {
              return const Center(child: CupertinoActivityIndicator());
            } else if (titanState is TitansLoaded) {
              final titans = titanState.titans;
              if (titans.isEmpty) {
                return const Center(
                  child: Text(
                    "No titans found",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                );
              }
              return CustomScrollView(
                physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics(),
                ),
                slivers: [
                  CupertinoSliverRefreshControl(
                    onRefresh: () async {
                      await Future.delayed(const Duration(milliseconds: 750));

                      await cubit.getTitans(refresh: true);
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
                              "Main Titans",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          ),
                          const SizedBox(height: 12),
                          MainTitansListView(titans: titans),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              "Titans",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          ),
                          const SizedBox(height: 12),
                        ],
                        titansList(),
                      ]),
                    ),
                  ),
                ],
              );
            } else if (titanState is TitansError) {
              return Center(
                child: Text(
                  "Error: ${titanState.message}",
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
}
