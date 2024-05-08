import 'dart:async';
import 'package:dealsdray/src/Authentication/screens/AuthScreen.dart';
import 'package:dealsdray/src/homePage/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_indicator/loading_indicator.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 4),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const AuthScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(
              height: 70,
              width: 70,
              child: LoadingIndicator(
                colors: [Colors.red, Color.fromARGB(255, 72, 8, 4)],
                indicatorType: Indicator.ballRotateChase,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Column(
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  height: 200.0,
                  width: 200.0,
                  filterQuality: FilterQuality.high,
                ),
                Text(
                  "Dealsdray",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
