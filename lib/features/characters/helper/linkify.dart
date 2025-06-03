import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchLink(String url) async {
  final Uri uri = Uri.parse(url);
  final bool canLaunch = await canLaunchUrl(uri);

  if (!canLaunch) {
    debugPrint('No application can handle this link: $url');
    return;
  }

  final bool launched = await launchUrl(
    uri,
    mode: LaunchMode.externalApplication,
  );

  if (!launched) {
    debugPrint('Could not launch $url');
  }
}
