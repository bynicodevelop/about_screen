import 'package:about_screen/about_screen.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  final String applicationName;
  final String? applicationVersion;
  final String? applicationLegalese;
  final Widget? applicationIcon;

  final List<AboutSocialIcon>? applicationSocials;

  const AboutScreen({
    Key? key,
    required this.applicationName,
    this.applicationVersion,
    this.applicationLegalese,
    this.applicationIcon,
    this.applicationSocials,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        if (applicationIcon != null) applicationIcon!,
        if (applicationIcon != null)
          const SizedBox(
            height: 16,
          ),
        Text(
          applicationName,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(
          height: 8,
        ),
        if (applicationVersion != null)
          Text(
            applicationVersion!,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        if (applicationVersion != null)
          const SizedBox(
            height: 8,
          ),
        if (applicationLegalese != null)
          Text(
            applicationLegalese!,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        if (applicationLegalese != null)
          const SizedBox(
            height: 12,
          ),
        if (applicationSocials != null)
          Wrap(
            spacing: 20,
            children: List.generate(applicationSocials!.length,
                (index) => applicationSocials![index]),
          ),
        const Spacer(),
      ],
    );
  }
}
