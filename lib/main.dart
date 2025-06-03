import 'package:aot/features/characters/data/api/character_web_services.dart';
import 'package:aot/features/titans/data/api/titans_web_services.dart';
import 'package:aot/features/characters/data/repository/characters_repo.dart';
import 'package:aot/features/titans/data/repo/titans_repo.dart';
import 'package:aot/features/characters/presentation/cubit/characters_cubit.dart';
import 'package:aot/features/titans/presentation/cubit/titans_cubit.dart';
// import 'package:aot/features/characters/presentation/pages/character_page.dart';
import 'package:aot/features/titans/presentation/pages/titans_page.dart';
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
          create: (context) => CharactersCubit(
            CharactersRepo(characterWebServices: CharacterWebServices(Dio())),
          ),
        ),
        BlocProvider(
          create: (context) =>
              TitansCubit(TitansRepo(webService: TitanWebServices(Dio()))),
        ),
      ],
      child: MaterialApp(
        title: 'AOT',
        home: TitansPage(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(255, 25, 29, 37),

          fontFamily: GoogleFonts.tinos().fontFamily,
        ),
      ),
    );
  }
}
