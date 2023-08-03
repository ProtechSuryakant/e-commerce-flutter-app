import 'package:e_commerce_app/Pages/splashScreen.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const MaterialColor customSwatch = MaterialColor(
    _customColorValue,
    <int, Color>{
      50: Color(0xFFE0E5EF),
      100: Color(0xFFB3C0D7),
      200: Color(0xFF8090B3),
      300: Color(0xFF4D608F),
      400: Color(0xFF33456F),
      500: Color(_customColorValue),
      600: Color(0xFF1E2755),
      700: Color(0xFF1A2150),
      800: Color(0xFF161D4B),
      900: Color(0xFF0E1442),
    },
  );

  static const int _customColorValue = 0xFF293265;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: customSwatch,
        primaryColor: customSwatch,
        scaffoldBackgroundColor: const Color(0xFFEEEDFF),
      ),
      home: const SplashScreen(),
    );
  }
}
