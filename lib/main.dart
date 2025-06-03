import 'package:aot/features/characters/data/api/character_web_services.dart';
import 'package:aot/features/characters/presentation/pages/character_page.dart';

import 'package:aot/features/characters/data/repository/characters_repo.dart';

import 'package:aot/features/characters/presentation/cubit/characters_cubit.dart';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => CharactersCubit(
            CharactersRepo(characterWebServices: CharacterWebServices(Dio())),
          ),
        ),
      ],
      child: MaterialApp(
        title: 'AOT',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: const Color.fromARGB(255, 25, 29, 37),
            foregroundColor: Colors.white,
          ),
          scaffoldBackgroundColor: const Color.fromARGB(255, 25, 29, 37),
          fontFamily: GoogleFonts.tinos().fontFamily,
        ),
        home: const CharacterPage(),
      ),
    );
  }
}
