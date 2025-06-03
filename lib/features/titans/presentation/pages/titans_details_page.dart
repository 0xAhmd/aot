import 'package:aot/features/characters/helper/character_description.dart';
import 'package:aot/features/characters/presentation/widgets/description.dart';
import 'package:aot/features/titans/data/models/titans_model.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitansDetailsPage extends StatelessWidget {
  const TitansDetailsPage({super.key, required this.titan});

  final Titan titan;

  Widget buildSliverAppBar() {
    return SliverAppBar(
      expandedHeight: 600,
      pinned: true,
      stretch: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(
          titan.name!,
          style: const TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
        background: Hero(
          tag: titan.id!,
          child: (titan.img != null && titan.img!.isNotEmpty)
              ? Image.network(
                  titan.img!,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Image.asset(
                      'assets/images/placeholder.png',
                      height: 220,
                      width: 185,
                      fit: BoxFit.cover,
                    );
                  },
                )
              : Container(
                  height: 220,
                  width: double.infinity,
                  color: Colors.grey[800],
                  child: const Icon(Icons.image, color: Colors.white),
                ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          buildSliverAppBar(),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                margin: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                padding: const EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // characterInfo('Type : ', titan.height?.join(' / ')),
                    //                     buildDeviderPerCharacter(310),
                    characterInfo('Name : ', titan.name ?? ''),
                    buildDeviderPerCharacter(310),
                    characterInfo('Utilities : ', titan.abilities.toString()),
                    buildDeviderPerCharacter(320),
                    characterInfo('Height : ', titan.height.toString()),
                    buildDeviderPerCharacter(320),
                    characterInfo('Allegiance : ', titan.allegiance ?? ''),
                    buildDeviderPerCharacter(305),

                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: characterDescription(
                        'Description: ',
                        getDescription(titan.name ?? ''),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 300),
            ]),
          ),
        ],
      ),
    );
  }
}

Widget characterInfo(String title, String info) {
  return RichText(
    overflow: TextOverflow.ellipsis,
    maxLines: 1,
    text: TextSpan(
      children: [
        TextSpan(
          text: title,
          style: TextStyle(
            fontFamily: GoogleFonts.tinos().fontFamily,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 19,
          ),
        ),
        TextSpan(
          text: info,
          style: TextStyle(
            fontFamily: GoogleFonts.tinos().fontFamily,
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ],
    ),
  );
}

Widget buildDeviderPerCharacter(double endIndent) {
  return Divider(
    color: Colors.white,
    height: 30,
    endIndent: endIndent,
    thickness: 2,
  );
}
