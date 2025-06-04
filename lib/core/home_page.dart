// cspell:disable
import 'package:aot/core/music.dart';

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
  bool isMuted = false;
  late final MusicPlayerService musicPlayer;

  final List<Widget> _pages = const [
    CharacterPage(),
    TitansPage(),
    OrganizationsPage(),
    LocationPage(),
  ];

  @override
  void initState() {
    super.initState();
    musicPlayer = MusicPlayerService();
    musicPlayer.init().then((_) {
      setState(() {
        isMuted = musicPlayer.isMuted;
      });
    });
  }

  @override
  void dispose() {
    musicPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _selectedIndex < 4 ? _pages[_selectedIndex] : _pages[0],
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
              if (index == 4) {
                setState(() {
                  isMuted = !isMuted;
                  musicPlayer.mute(isMuted);
                });
              } else {
                setState(() {
                  _selectedIndex = index;
                });
              }
            },
            tabs: [
              const GButton(
                icon: Icons.diversity_2_sharp,
                text: "Characters",
                textStyle: TextStyle(color: Colors.white, fontSize: 17),
              ),
              const GButton(
                icon: FontAwesomeIcons.skull,
                text: "Titans",
                textStyle: TextStyle(color: Colors.white, fontSize: 17),
              ),
              const GButton(
                icon: Icons.schema_outlined,
                text: "Organizations",
                textStyle: TextStyle(color: Colors.white, fontSize: 17),
              ),
              const GButton(
                icon: Icons.location_on_sharp,
                text: "Locations",
                textStyle: TextStyle(color: Colors.white, fontSize: 17),
              ),
              GButton(
                icon: isMuted ? Icons.volume_off : Icons.volume_up,
                text: isMuted ? "Muted" : "Music",
                textStyle: const TextStyle(color: Colors.white, fontSize: 17),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
