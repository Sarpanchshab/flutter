// Import Flutter UI libraries
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// This is the second screen
class NavigatorPopPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar at the top with title
      appBar: AppBar(title: Text('Second Page')),

      // Body with center content
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // 👉 This goes back to the previous screen
            Navigator.pop(context); // Close this page
          },
          // Text shown on the button
          child: Text('Go Back'),
        ),
      ),
    );
  }
}
