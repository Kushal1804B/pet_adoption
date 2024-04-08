import 'package:flutter/material.dart';
import 'package:pet_adoption/Theme/theme_provider.dart';
import 'package:pet_adoption/pages/home_page.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, child) => MaterialApp(
        theme: Provider.of<ThemeProvider>(context).themeData,
        debugShowCheckedModeBanner: false,
        home: home_page(),
      ),
    );
  }
}
