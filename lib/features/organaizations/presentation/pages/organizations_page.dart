//cspell:disable
import 'package:aot/features/organaizations/presentation/widgets/organization_list_view.dart';

import '../cubit/organizations_cubit.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrganizationsPage extends StatefulWidget {
  const OrganizationsPage({super.key});

  @override
  State<OrganizationsPage> createState() => _OrganizationsPageState();
}

class _OrganizationsPageState extends State<OrganizationsPage> {
  final TextEditingController _searchController = TextEditingController();
  bool _isSearching = false;
  String _searchQuery = "";

  @override
  void initState() {
    super.initState();
    context.read<OrganizationsCubit>().getOrganizations();
    _searchController.addListener(() {
      setState(() {
        _searchQuery = _searchController.text.trim().toLowerCase();
      });
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _startSearch() {
    setState(() {
      _isSearching = true;
    });
  }

  void _stopSearch() {
    _searchController.clear();
    setState(() {
      _isSearching = false;
      _searchQuery = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _isSearching
            ? TextField(
                controller: _searchController,
                autofocus: true,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  hintText: 'Search organizations...',
                  hintStyle: TextStyle(color: Colors.white54),
                  border: InputBorder.none,
                ),
              )
            : const Text("Organizations", style: TextStyle(fontSize: 24)),
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
      body: BlocBuilder<OrganizationsCubit, OrganizationsState>(
        builder: (context, state) {
          if (state is OrganizationsInitial || state is OrganizationsLoading) {
            return const Center(child: CupertinoActivityIndicator());
          } else if (state is OrganizationsLoaded) {
            final orgs = state.organaizations;

            // Filter organizations based on search query
            final filteredOrgs = _searchQuery.isEmpty
                ? orgs
                : orgs
                      .where(
                        (org) => org.name.toLowerCase().contains(_searchQuery),
                      )
                      .toList();

            return RefreshIndicator(
              onRefresh: () async {
                await Future.delayed(const Duration(milliseconds: 750));

                await context.read<OrganizationsCubit>().getOrganizations(
                  refresh: true,
                );
              },
              child: filteredOrgs.isEmpty
                  ? const Center(
                      child: Text(
                        "No organizations found",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    )
                  : OrganizationListView(filteredOrgs: filteredOrgs),
            );
          } else if (state is OrganizationsError) {
            return Center(
              child: Text(
                state.errorMessage,
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
