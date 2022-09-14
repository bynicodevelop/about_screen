# about_screen

A Flutter package to show an about screen.

## Usage

```dart
import 'package:about_screen/about_screen.dart';

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
          /// The application name. (Required)
          packageInfo.appName,
          /// The application version. (optional)
          applicationVersion: packageInfo.version,
          /// The application legal copyright. (optional)
          applicationLegalese: '© 2021 Nico Develop',
          /// The application icon. (optional)
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
```
## Rendering

<img src="https://raw.githubusercontent.com/bynicodevelop/about_screen/main/example/assets/capture-1.png" width="320px" />