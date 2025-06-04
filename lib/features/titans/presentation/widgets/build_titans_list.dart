import '../cubit/titans_cubit.dart';
import 'titans_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Widget titansList() {
  return BlocBuilder<TitansCubit, TitansState>(
    builder: (context, state) {
      if (state is TitansLoading || state is TitansInitial) {
        return const Center(child: CupertinoActivityIndicator());
      } else if (state is TitansLoaded) {
        final titans = state.titans;

        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 12),
          itemCount: titans.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) {
            final titan = titans[index];
            return TitansCard(
              titan: titan,
              imageUrl: titan.img ?? '',
              title: titan.name ?? '',
            );
          },
        );
      } else if (state is TitansError) {
        return Center(
          child: Text(
            "Error: ${state.message}",
            style: const TextStyle(color: Colors.red),
          ),
        );
      } else {
        return const Center(child: Text("Unknown error"));
      }
    },
  );
}
