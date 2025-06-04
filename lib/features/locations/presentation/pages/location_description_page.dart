//cspell:disable
import 'package:aot/features/locations/data/models/location_model.dart';

import '../../../characters/helper/locations_decrtiption.dart';
import '../../../characters/presentation/widgets/description.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationDescriptionPage extends StatelessWidget {
  const LocationDescriptionPage({super.key, required this.locationModel});

  final LocationModel locationModel;

  Widget buildSliverAppBar() {
    return SliverAppBar(
      expandedHeight: 600,
      pinned: true,
      stretch: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(
          locationModel.name,
          style: const TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
        background: Hero(
          tag: locationModel.id,
          child: (locationModel.img.isNotEmpty)
              ? Image.network(
                  locationModel.img,
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
                    characterInfo('Name : ', locationModel.name),
                    buildDeviderPerCharacter(310),
                    characterInfo(
                      'Utilities : ',
                      locationModel.territory.toString(),
                    ),
                    buildDeviderPerCharacter(320),
                    characterInfo('Height : ', locationModel.region.toString()),
                    buildDeviderPerCharacter(320),

                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: characterDescription(
                        'Description: ',
                        getDescription(locationModel.name),
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
