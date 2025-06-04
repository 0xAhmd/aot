import '../../../characters/helper/linkify.dart';
import '../../../characters/helper/organizations_description.dart';
import '../../../characters/presentation/widgets/description.dart';
import '../../data/models/organaizations.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrganizationDetailsPage extends StatelessWidget {
  const OrganizationDetailsPage({super.key, required this.organization});

  final Organaizations organization;

  Widget buildSliverAppBar() {
    return SliverAppBar(
      expandedHeight: 400,
      pinned: true,
      stretch: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(
          organization.name,
          style: const TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
        background: Hero(
          tag: organization.id ?? '',
          child: Image.network(
            organization.img,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) =>
                Image.asset('assets/images/placeholder.png', fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }

  Widget buildDivider(double endIndent) {
    return Divider(
      color: Colors.white,
      height: 30,
      endIndent: endIndent,
      thickness: 2,
    );
  }

  Widget infoList(String title, List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontFamily: GoogleFonts.tinos().fontFamily,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 19,
          ),
        ),
        const SizedBox(height: 5),
        ...items.map(
          (item) => Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: GestureDetector(
              onTap: () => launchLink(item),

              child: Text(
                '• ${item.startsWith('http') ? 'Click to view' : item}',
                style: TextStyle(
                  fontFamily: GoogleFonts.tinos().fontFamily,
                  fontSize: 17,
                  color: item.startsWith('http') ? Colors.blue : Colors.white,
                  decoration: item.startsWith('http')
                      ? TextDecoration.underline
                      : null,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget info(String title, String content) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: title,
            style: TextStyle(
              fontFamily: GoogleFonts.tinos().fontFamily,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          TextSpan(
            text: content,
            style: TextStyle(
              fontFamily: GoogleFonts.tinos().fontFamily,
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ],
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
                margin: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Single string → wrapped in list for infoList
                    infoList('Affiliation:', [organization.affiliation]),
                    buildDivider(280),

                    // List
                    infoList('Occupations:', organization.occupations),
                    buildDivider(240),

                    // Single string (could be link) → wrapped in list
                    infoList('Debut Episode:', [organization.debut]),
                    buildDivider(240),

                    // Notable members: could be links
                    infoList('Notable Members:', organization.notableMembers),
                    buildDivider(220),

                    // Former members: list or 'None'
                    infoList(
                      'Former Members:',
                      organization.notableFormerMembers.isEmpty
                          ? ['None']
                          : organization.notableFormerMembers,
                    ),
                    buildDivider(220),

                    // Description is plain text
                    characterDescription(
                      'Description:\n',
                      getDescription(organization.name),
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
