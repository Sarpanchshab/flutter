import 'package:flutter/material.dart';

// This is the main class for the DialogBox screen
class DialogBox extends StatefulWidget {
  const DialogBox({super.key}); // Constructor

  @override
  State<DialogBox> createState() => _DialogBoxState(); // Creates the state for this widget
}

// This is the state class for the DialogBox screen
class _DialogBoxState extends State<DialogBox> {
  // Function to display a custom dialog box
  void showCustomDialog() {
    showDialog(
      context: context, // Specifies where the dialog should appear (on this screen)
      builder: (BuildContext context) { // Builds the UI for the dialog box
        return AlertDialog(
          title: Text("Dialog Title"), // The title displayed at the top of the dialog box
          content: Text("This is a simple dialog box."), // The message displayed inside the dialog
          actions: [ // Actions are buttons at the bottom of the dialog
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Closes the dialog when the button is pressed
              },
              child: Text("Close"), // The text label of the button
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog Example"), // Title of the app bar
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: showCustomDialog, // Calls the function to show the dialog when clicked
          child: Text("Show Dialog"), // Button label displayed on the screen
        ),
      ),
    );
  }
}
