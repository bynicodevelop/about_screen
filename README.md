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
        child: aboutScreen(packageInfo.appName,
            applicationVersion: packageInfo.version,
            applicationLegalese: '© 2023 Nico Develop',
            applicationIcon: Image.asset(
              'assets/logo.png',
              width: 100,
              height: 100,
            ),
            socials: [
              const AboutSocialIcon(
                url: "https://facebook.com",
                icon: EvaIcons.facebook,
              ),
              const AboutSocialIcon(
                url: "https://linkedin.com",
                icon: EvaIcons.linkedin,
              ),
              const AboutSocialIcon(
                url: "https://github.com",
                icon: EvaIcons.github,
              ),
              const AboutSocialIcon(
                url: "https://twitter.com",
                icon: EvaIcons.twitter,
              ),
            ]),
      ),
    );
  }
}
```
## Rendering

<img src="https://res.cloudinary.com/dadnvmbcq/image/upload/v1675965014/1675964987023_100_rf1xbd.png" width="320px" />