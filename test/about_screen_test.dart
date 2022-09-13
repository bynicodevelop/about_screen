import 'package:about_screen/about_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:transparent_image/transparent_image.dart';

void main() {
  testWidgets('Show confirm modal Controle default values',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: aboutScreen(
            'Nico Develop',
            applicationVersion: '1.0.0',
            applicationLegalese: '© 2021 Nico Develop',
            applicationIcon: Image.memory(
              kTransparentImage,
            ),
          ),
        ),
      ),
    );

    await tester.pumpAndSettle();

    expect(find.text('Nico Develop'), findsOneWidget);
    expect(find.text('1.0.0'), findsOneWidget);
    expect(find.text('© 2021 Nico Develop'), findsOneWidget);
    expect(find.byType(Image), findsOneWidget);
  });
}
