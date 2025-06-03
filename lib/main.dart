import 'package:aot/core/home_page.dart';
import 'package:aot/features/characters/data/models/character_model.dart';
import 'package:aot/features/characters/presentation/cubit/characters_cubit.dart';
import 'package:aot/features/locations/presentation/cubit/locations_cubit.dart';
import 'package:aot/features/organaizations/presentation/cubit/organizations_cubit.dart';

import 'package:aot/features/titans/presentation/cubit/titans_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';
import 'service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(CharacterModelAdapter());
  setupLocator(); // Initialize GetIt
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => sl<CharactersCubit>()),
        BlocProvider(create: (_) => sl<OrganizationsCubit>()),
        BlocProvider(create: (_) => sl<TitansCubit>()),
        BlocProvider(create: (_) => sl<LocationsCubit>()),
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
        home: const HomePage(),
      ),
    );
  }
}
