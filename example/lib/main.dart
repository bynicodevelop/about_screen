import 'package:flutter/material.dart';
import 'package:about_screen/about_screen.dart';
import 'package:package_info_plus/package_info_plus.dart';

late PackageInfo packageInfo;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  packageInfo = await PackageInfo.fromPlatform();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: aboutScreen(
          packageInfo.appName,
          applicationVersion: packageInfo.version,
          applicationLegalese: '© 2021 Nico Develop',
          applicationIcon: Image.asset(
            'assets/logo.png',
            width: 100,
            height: 100,
          ),
        ),
      ),
    );
  }
}
