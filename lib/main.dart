import 'package:dealsdray/src/Authentication/screens/AuthScreen.dart';
import 'package:dealsdray/src/Authentication/screens/OtpScreen.dart';
import 'package:dealsdray/src/homePage/HomePage.dart';
import 'package:flutter/material.dart';
import 'src/Authentication/screens/EmailRegistrationScreen.dart';
import 'src/splashScreen/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
