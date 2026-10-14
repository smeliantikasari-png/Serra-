import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() => runApp(const SerraApp());

class SerraApp extends StatelessWidget {
  const SerraApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SERRA',
      theme: ThemeData(primaryColor: Color(0xFF2D5A8A)),
      home: SplashScreen(),
    );
  }
}
