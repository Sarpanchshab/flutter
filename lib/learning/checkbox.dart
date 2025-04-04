import 'package:flutter/material.dart';

// Main function to run the Flutter app
void main() {
  runApp(MyApp());
}

// Stateless widget to define the overall structure of the app
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CheckboxExample(), // Setting the home screen of the app
    );
  }
}

// Stateful widget to manage the checkbox state
class CheckboxExample extends StatefulWidget {
  @override
  _CheckboxExampleState createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool isChecked = false; // Variable to track checkbox state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Checkbox Example")), // App bar title
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, // Aligning elements at center
          children: [
            // Checkbox widget
            Checkbox(
              value: isChecked, // Checkbox value (checked or unchecked)
              onChanged: (bool? value) { // Function to handle checkbox state change
                setState(() {
                  isChecked = value ?? false; // Update state when checkbox is clicked
                });
              },
            ),
            // Label text next to checkbox
            Text("Accept Terms & Conditions"),
          ],
        ),
      ),
    );
  }
}
