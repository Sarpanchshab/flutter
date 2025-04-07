// Import Timer class from dart
import 'dart:async';

// Import your second screen (listviewbuilder)
import 'package:firstproject/learning/listviewbuilder.dart';

// Flutter UI packages
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// SplashScreen is a stateful widget because we use Timer and Navigator
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key}); // Constructor

  @override
  State<SplashScreen> createState() => _SplashScreenState(); // Creates state
}

// This class controls the screen state
class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // This function runs when the screen is first created
    super.initState();

    // Wait for 2 seconds, then go to the next screen
    Timer(Duration(seconds: 2), () {
      // Navigate to listviewbuilder screen and remove splash screen from back stack
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => listviewbuilder())
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // UI of the splash screen
    return Scaffold(
      body: Container(
        color: Colors.blue, // Background color
        child: Center(
          child: Text(
            'Classico', // Text in center
            style: TextStyle(
              fontWeight: FontWeight.w700, // Bold text
              fontSize: 34, // Big text
              color: Colors.yellow, // White color
            ),
          ),
        ),
      ),
    );
  }
}
