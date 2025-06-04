import 'package:flutter/material.dart';

class MainTitansCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String? subtitle;

  const MainTitansCard({
    super.key,
    required this.imageUrl,
    required this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190, // was 150
      margin: const EdgeInsets.only(right: 16), // more space between cards
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image
          ClipRRect(
            borderRadius: BorderRadius.circular(12), // slightly more rounded
            child: Image.network(
              imageUrl,
              height: 140, // was 100
              width: 190,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 140,
                  width: 190,
                  color: Colors.grey[800],
                  child: const Icon(
                    Icons.broken_image,
                    color: Colors.white,
                    size: 32,
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 12),

          // Title
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 16, // was 14
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),

          // Subtitle
          if (subtitle != null)
            Text(
              subtitle!,
              style: const TextStyle(
                fontSize: 13, // was 12
                color: Colors.white70,
              ),
            ),
        ],
      ),
    );
  }
}
