//cspell:disable
import 'package:aot/features/titans/data/models/titans_model.dart';

import 'core/home_page.dart';
import 'features/characters/data/models/character_model.dart';
import 'features/characters/presentation/cubit/characters_cubit.dart';
import 'features/locations/data/models/location_model.dart';
import 'features/locations/presentation/cubit/locations_cubit.dart';
import 'features/organaizations/data/models/organaizations.dart';
import 'features/organaizations/presentation/cubit/organizations_cubit.dart';

import 'features/titans/presentation/cubit/titans_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';
import 'service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(CharacterModelAdapter());
  Hive.registerAdapter(OrganaizationsAdapter());
  Hive.registerAdapter(LocationModelAdapter());
  Hive.registerAdapter(TitanAdapter());

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
          appBarTheme: const AppBarTheme(
            color: Color(0xff010919),
            foregroundColor: Colors.white,
          ),
          scaffoldBackgroundColor: const Color(0xff010919),
          fontFamily: GoogleFonts.tinos().fontFamily,
        ),
        home: const HomePage(),
      ),
    );
  }
}
