import 'package:flutter/material.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomeScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2D5A8A),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("SR", style: TextStyle(color: Colors.white, fontSize: 64, fontWeight: FontWeight.bold, letterSpacing: 8)),
            SizedBox(height: 10),
            Text("SERRA FURNITURE", style: TextStyle(color: Colors.white70, letterSpacing: 4)),
          ],
        ),
      ),
    );
  }
}
