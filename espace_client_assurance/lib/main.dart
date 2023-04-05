import 'package:espace_client_assurance/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: mcgpalette0,
      ),
      home: LoginScreen(),
    );
  }
}

const MaterialColor mcgpalette0 =
    MaterialColor(_mcgpalette0PrimaryValue, <int, Color>{
  50: Color(0xFFE8EBFE),
  100: Color(0xFFC7CCFD),
  200: Color(0xFFA1AAFC),
  300: Color(0xFF7B88FB),
  400: Color(0xFF5F6FFA),
  500: Color(_mcgpalette0PrimaryValue),
  600: Color(0xFF3D4EF8),
  700: Color(0xFF3444F7),
  800: Color(0xFF2C3BF6),
  900: Color(0xFF1E2AF5),
});
const int _mcgpalette0PrimaryValue = 0xFF4355F9;

const MaterialColor mcgpalette0Accent =
    MaterialColor(_mcgpalette0AccentValue, <int, Color>{
  100: Color(0xFFFFFFFF),
  200: Color(_mcgpalette0AccentValue),
  400: Color(0xFFC3C6FF),
  700: Color(0xFFAAAEFF),
});
const int _mcgpalette0AccentValue = 0xFFF6F7FF;
