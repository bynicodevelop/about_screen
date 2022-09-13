import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  final String applicationName;
  final String? applicationVersion;
  final String? applicationLegalese;
  final Widget? applicationIcon;

  const AboutScreen({
    Key? key,
    required this.applicationName,
    this.applicationVersion,
    this.applicationLegalese,
    this.applicationIcon,
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
          style: Theme.of(context).textTheme.headline5,
        ),
        const SizedBox(
          height: 8,
        ),
        if (applicationVersion != null)
          Text(
            applicationVersion!,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        if (applicationVersion != null)
          const SizedBox(
            height: 8,
          ),
        if (applicationLegalese != null)
          Text(
            applicationLegalese!,
            style: Theme.of(context).textTheme.caption,
          ),
        const Spacer(),
      ],
    );
  }
}
