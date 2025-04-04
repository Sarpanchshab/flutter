// Import Flutter material package
import 'package:flutter/material.dart';

// Create a stateful widget named StackWidget
class StackWidget extends StatefulWidget {
  const StackWidget({super.key});

  // Create the state (logic) class for this widget
  @override
  State<StackWidget> createState() => _StackWidgetState();
}

// Main state class where UI is built
class _StackWidgetState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( // Basic layout of app
      body: Center( // Center the content on the screen
        child: Container(
          height: 200, // outer yellow box height
          width: 200,  // outer yellow box width
          color: Colors.yellow, // background color of outer container

          // 👇 Stack is used to place widgets on top of each other
          child: Stack(
            children: [

              // 🔲 First child (bottom layer)
              Container(
                height: 100,
                width: 100,
                color: Colors.black,
                child: Text(
                  "Screen 1",
                  style: TextStyle(color: Colors.white), // white text on black box
                ),
              ),

              // 🔲 Second child (positioned box on top of first one)
              Positioned(
                bottom: 0, // stick to bottom of yellow box
                left: 100, // move to right side
                child: Container(
                  height: 60,
                  width: 50,
                  color: Colors.blue,
                  child: Text(
                    "Screen 2",
                    style: TextStyle(color: Colors.white), // white text on blue box
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
