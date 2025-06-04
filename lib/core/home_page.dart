import '../features/characters/presentation/pages/character_page.dart';
import '../features/locations/presentation/pages/location_page.dart';
import '../features/organaizations/presentation/pages/organizations_page.dart';
import '../features/titans/presentation/pages/titans_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    CharacterPage(),
    TitansPage(),
    OrganizationsPage(),
    LocationPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 14),
          child: GNav(
            padding: const EdgeInsets.all(16),
            color: Colors.white,
            activeColor: Colors.white,
            gap: 8,
            tabBackgroundColor: Colors.grey.shade800,
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            tabs: const [
              GButton(
                icon: Icons.diversity_2_sharp,
                text: "Characters",
                textStyle: TextStyle(color: Colors.white, fontSize: 17),
              ),
              GButton(
                icon: FontAwesomeIcons.skull,
                text: "Titans",
                textStyle: TextStyle(color: Colors.white, fontSize: 17),
              ),
              GButton(
                icon: Icons.schema_outlined,
                text: "Organizations",
                textStyle: TextStyle(color: Colors.white, fontSize: 17),
              ),
              GButton(
                icon: Icons.location_on_sharp,
                text: "Locations",
                textStyle: TextStyle(color: Colors.white, fontSize: 17),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
