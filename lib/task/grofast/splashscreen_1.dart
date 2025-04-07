import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'onboarding.dart';

class GroFastSplashScreen extends StatefulWidget {
  const GroFastSplashScreen({super.key});

  @override
  State<GroFastSplashScreen> createState() => _GroFastSplashScreenState();
}

class _GroFastSplashScreenState extends State<GroFastSplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[200],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // centered vertically
            children: [
              Image.asset('assets/burger.png', width: 70, height: 70),
              SizedBox(height: 10), // space between image and text
              Text(
                "GROFAST",
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.green[400],
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
