import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pet_adoption/Theme/theme_provider.dart';
import 'package:pet_adoption/pages/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  testWidgets('Test home_page UI and functionality',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: ChangeNotifierProvider(
          create: (_) => ThemeProvider(),
          child: home_page(),
        ),
      ),
    );
    expect(find.text('Welcome, Pet Aficionado!'), findsOneWidget);
  });
}
