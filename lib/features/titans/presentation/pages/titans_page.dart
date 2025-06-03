import 'package:aot/features/titans/presentation/cubit/titans_cubit.dart';
import 'package:aot/features/titans/presentation/widgets/build_titans_list.dart';
import 'package:aot/features/titans/presentation/widgets/main_titans_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TitansPage extends StatefulWidget {
  const TitansPage({super.key});

  @override
  State<TitansPage> createState() => _TitansPageState();
}

class _TitansPageState extends State<TitansPage> {
  @override
  void initState() {
    super.initState();
    context.read<TitansCubit>().getTitans();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<TitansCubit, TitansState>(
          builder: (context, titanState) {
            if (titanState is TitansLoading || titanState is TitansInitial) {
              return const Center(child: CupertinoActivityIndicator());
            } else if (titanState is TitansLoaded) {
              final titans = titanState.titans;

              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          "Main Titans",
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                      ),
                      const SizedBox(height: 12),

                      MainTitansListView(titans: titans),

                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          "Titans",
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                      ),
                      const SizedBox(height: 12),
                      titansList(),
                    ],
                  ),
                ),
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

  //! make pagination
  //! filter the main characters to display only top 10 character
  //! change characters UI to a grid view
  //! make the tab bar
  //! make the search bar
  //! splash screen and launcher icon
}
