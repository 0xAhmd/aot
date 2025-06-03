import 'package:aot/features/organaizations/presentation/cubit/organizations_cubit.dart';
import 'package:aot/features/organaizations/presentation/pages/organization_details_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrganizationsPage extends StatefulWidget {
  const OrganizationsPage({super.key});
  @override
  State<OrganizationsPage> createState() => _OrganizationsPageState();
}

class _OrganizationsPageState extends State<OrganizationsPage> {
  @override
  void initState() {
    BlocProvider.of<OrganizationsCubit>(context).getOrganizations();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Organizations", style: TextStyle(fontSize: 24)),
      ),
      body: BlocBuilder<OrganizationsCubit, OrganizationsState>(
        builder: (context, state) {
          if (state is OrganizationsInitial || state is OrganizationsLoading) {
            return const Center(child: CupertinoActivityIndicator());
          } else if (state is OrganizationsLoaded) {
            final orgs = state.organaizations;
            return ListView.builder(
              itemCount: orgs.length,
              padding: const EdgeInsets.all(16),
              itemBuilder: (context, index) {
                final org = orgs[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            OrganizationDetailsPage(organization: org),
                      ),
                    );
                  },
                  child: Container(
                    height: 200,
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.network(
                          org.img,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Image.asset(
                              'assets/images/placeholder.png',
                              fit: BoxFit.cover,
                            );
                          },
                        ),
                        Positioned(
                          top: 12,
                          left: 12,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              org.name,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          } else if (state is OrganizationsError) {
            return Center(child: Text(state.errorMessage));
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
