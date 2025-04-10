import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Page background
      body: Padding(
        padding: const EdgeInsets.all(24.0), // Padding all around
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center everything
          children: [
            // Image from assets
            Image.asset(
              'assets/onboarding.jpg',
              height: 250,
            ),

            SizedBox(height: 30), // Space

            // Title text
            Text(
              "Welcome!",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 10), // Space

            // Subtitle text
            Text(
              "This is a simple onboarding page. You can add more screens!",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),

            SizedBox(height: 40),

            // Start button
            ElevatedButton(
              onPressed: () {
                // Next action (navigate or print)
                print("Start pressed");
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text("Get Started"),
            ),
          ],
        ),
      ),
    );
  }
}
