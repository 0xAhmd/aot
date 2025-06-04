import '../cubit/characters_cubit.dart';
import '../widgets/build_character_list.dart';
import '../widgets/main_characters_list_view.dart';
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
  final TextEditingController _searchController = TextEditingController();
  bool _isSearching = false;

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
        state.hasMore &&
        !_isSearching) {
      cubit.getCharacters(loadMore: true);
    }
  }

  void _startSearch() {
    setState(() {
      _isSearching = true;
    });
  }

  void _stopSearch() {
    _searchController.clear();
    context.read<CharactersCubit>().searchCharacters('');
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
    final cubit = context.read<CharactersCubit>();

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: _isSearching
            ? TextField(
                controller: _searchController,
                autofocus: true,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  hintText: 'Search character...',
                  hintStyle: TextStyle(color: Colors.white54),
                  border: InputBorder.none,
                ),
                onChanged: cubit.searchCharacters,
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
      body: BlocBuilder<CharactersCubit, CharactersState>(
        builder: (context, state) {
          if (state is CharactersLoading || state is CharactersInitial) {
            return const Center(child: CupertinoActivityIndicator());
          } else if (state is CharactersLoaded) {
            final character = state.characters;
            if (character.isEmpty) {
              return const Center(
                child: Text(
                  "No Character found",
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
                    await context.read<CharactersCubit>().getCharacters(
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
                            "Main Characters",
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          ),
                        ),
                        const SizedBox(height: 12),
                        MainCharactersListView(characters: cubit.characters),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            "Characters",
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          ),
                        ),
                        const SizedBox(height: 12),
                      ],
                      const CharacterListWithPagination(),
                    ]),
                  ),
                ),
              ],
            );
          } else if (state is CharactersError) {
            return Center(
              child: Text(
                "Error: ${state.message}",
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
