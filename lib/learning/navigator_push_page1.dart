// Import second page and material design
import 'package:firstproject/learning/navigator_pop_page2.dart';
import 'package:flutter/material.dart';

// This is the first screen (Home Page)
class NavigatorPushPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Top App Bar with title
      appBar: AppBar(title: Text('First Page')),

      // Center content
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // 👉 This is how you go to another screen
            Navigator.push(
              context, // current screen's context
              MaterialPageRoute(
                builder: (context) => NavigatorPopPage2(), // go to SecondPage
              ),
            );
          },
          // Button text
          child: Text('Go to Second (Page Navigator Pop 2)'),
        ),
      ),
    );
  }
}
