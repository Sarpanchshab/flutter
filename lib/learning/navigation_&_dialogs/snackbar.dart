import 'package:flutter/material.dart';

// A stateless widget that displays a button to show a Snackbar
class SnackBarExample extends StatelessWidget {
  const SnackBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snackbar Example"), // Sets the title of the app bar
      ),

      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Displays a Snackbar when the button is pressed
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("This is a Snackbar message!"), // Message inside the Snackbar
                duration: Duration(seconds: 3), // Duration for which Snackbar is visible
                action: SnackBarAction(
                  label: "UNDO", // Text of the action button inside the Snackbar
                  onPressed: () {
                    // Displays another Snackbar when the UNDO button is pressed
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Undo action performed!"), // Message for the Undo action
                        duration: Duration(seconds: 2), // Duration for the Undo message
                      ),
                    );
                  },
                ),
              ),
            );
          },
          child: Text("Show Snackbar"), // Text displayed on the button
        ),
      ),
    );
  }
}
