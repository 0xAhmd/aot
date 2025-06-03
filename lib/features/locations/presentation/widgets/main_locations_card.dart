import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MainLocationsCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String? subtitle;

  const MainLocationsCard({
    super.key,
    required this.imageUrl,
    required this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,
      margin: const EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Cached Image
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              height: 140,
              width: 190,
              fit: BoxFit.cover,
              placeholder: (context, url) => Container(
                height: 140,
                width: 190,
                color: Colors.grey[800],
                child: const Center(child: CircularProgressIndicator()),
              ),
              errorWidget: (context, url, error) => Container(
                height: 140,
                width: 190,
                color: Colors.grey[800],
                child: const Icon(
                  Icons.broken_image,
                  color: Colors.white,
                  size: 32,
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),

          // Title
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),

          // Subtitle
          if (subtitle != null)
            Text(
              subtitle!,
              style: const TextStyle(fontSize: 13, color: Colors.white70),
            ),
        ],
      ),
    );
  }
}
