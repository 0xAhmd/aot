import 'package:aot/features/characters/data/api/character_web_services.dart';
import 'package:aot/features/characters/data/models/character_model.dart';

import 'package:aot/features/characters/data/repository/characters_repo.dart';

import 'package:aot/features/characters/presentation/cubit/characters_cubit.dart';
import 'package:aot/features/organaizations/data/api/organizations_web_service.dart';
import 'package:aot/features/organaizations/data/repo/organizations_repo.dart';
import 'package:aot/features/organaizations/presentation/cubit/organizations_cubit.dart';
import 'package:aot/features/titans/data/api/titans_web_services.dart';
import 'package:aot/features/titans/data/repo/titans_repo.dart';
import 'package:aot/features/titans/presentation/cubit/titans_cubit.dart';
import 'package:aot/features/titans/presentation/pages/titans_page.dart';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(CharacterModelAdapter());
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
        BlocProvider(
          create: (context) => OrganizationsCubit(
            OrganizationsRepo(
              organizationsWebService: OrganizationsWebService(Dio()),
            ),
          ),
        ),
        BlocProvider(
          create: (context) =>
              TitansCubit(TitansRepo(webService: TitanWebServices(Dio()))),
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
        home: const TitansPage(),
      ),
    );
  }
}
