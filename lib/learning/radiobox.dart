import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); // Entry point of the Flutter app
}

// Main app widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RadioButtonExample(), // Setting the home screen of the app
    );
  }
}

// Stateful widget to handle radio button selection
class RadioButtonExample extends StatefulWidget {
  @override
  _RadioButtonExampleState createState() => _RadioButtonExampleState();
}

class _RadioButtonExampleState extends State<RadioButtonExample> {
  String selectedOption = "Option 1"; // Variable to store the selected option

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Radio Button Example"), // Title displayed on the app bar
      ),
      body: Column(
        children: [
          // First radio button (Option 1)
          ListTile(
            title: Text("Option 1"), // Label for radio button
            leading: Radio<String>(
              value: "Option 1", // Unique value assigned to this radio button
              groupValue: selectedOption, // Tracks which radio button is selected
              onChanged: (String? value) { // Function triggered when user selects this radio button
                setState(() {
                  selectedOption = value!; // Updates the selected option state
                });
              },
            ),
          ),

          // Second radio button (Option 2)
          ListTile(
            title: Text("Option 2"), // Label for radio button
            leading: Radio<String>(
              value: "Option 2", // Unique value for this radio button
              groupValue: selectedOption, // Keeps track of the selected option
              onChanged: (String? value) { // Function triggered when selected
                setState(() {
                  selectedOption = value!; // Updates the selected option
                });
              },
            ),
          ),

          // Third radio button (Option 3)
          ListTile(
            title: Text("Option 3"), // Label for radio button
            leading: Radio<String>(
              value: "Option 3", // Unique value for this radio button
              groupValue: selectedOption, // Keeps track of the selected option
              onChanged: (String? value) { // Function triggered when selected
                setState(() {
                  selectedOption = value!; // Updates the selected option
                });
              },
            ),
          ),

          SizedBox(height: 20), // Adds spacing between elements

          // Display the selected option
          Text(
            "Selected: $selectedOption", // Shows the currently selected option
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), // Text styling
          ),
        ],
      ),
    );
  }
}
