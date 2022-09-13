import 'package:flutter/material.dart';
import 'screens/about_screen.dart';

Widget aboutScreen(
  String applicationName, {
  String? applicationVersion,
  String? applicationLegalese,
  Image? applicationIcon,
}) {
  return AboutScreen(
    applicationName: applicationName,
    applicationVersion: applicationVersion,
    applicationLegalese: applicationLegalese,
    applicationIcon: applicationIcon,
  );
}
