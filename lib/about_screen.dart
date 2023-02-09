// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'screens/about_screen.dart';

Widget aboutScreen(
  String applicationName, {
  String? applicationVersion,
  String? applicationLegalese,
  Image? applicationIcon,
  List<AboutSocialIcon>? socials,
}) {
  return AboutScreen(
      applicationName: applicationName,
      applicationVersion: applicationVersion,
      applicationLegalese: applicationLegalese,
      applicationIcon: applicationIcon,
      applicationSocials: socials);
}

// Ce widget permet d'afficher les icons des reseaux sociaux
class AboutSocialIcon extends StatelessWidget {
  final String url;
  final IconData icon;
  const AboutSocialIcon({
    Key? key,
    required this.url,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () async {
          await launchUrl(
            Uri.parse(url),
            mode: LaunchMode.externalApplication,
          );
        },
        icon: Icon(
          icon,
          size: 50,
        ));
  }
}
