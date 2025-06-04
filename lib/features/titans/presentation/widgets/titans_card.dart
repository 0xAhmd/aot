import '../../data/models/titans_model.dart';
import '../pages/titans_details_page.dart';
import 'package:flutter/material.dart';

class TitansCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final Titan titan;
  const TitansCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.titan,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => TitansDetailsPage(titan: titan)),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: imageUrl.isNotEmpty
                ? Image.network(
                    imageUrl,
                    width: 185,
                    height: 220,
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
          const SizedBox(height: 12),
          Text(
            title,
            style: const TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
