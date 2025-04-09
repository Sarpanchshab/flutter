import 'package:flutter/material.dart';
// This line adds Flutter's UI tools (Material Design widgets).

class ContainerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // This widget is the main screen.
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Example"), // Title on the top AppBar.
      ),
      body: Center(
        // Center the Container in the screen.
        child: Container(
          width: 200, // Set width of box to 200 pixels.
          height: 120, // Set height of box to 120 pixels.
          padding: EdgeInsets.all(16),
          // Add space **inside** the box (around the text).

          margin: EdgeInsets.all(20),
          // Add space **outside** the box (around the container).

          alignment: Alignment.center,
          // Put the child (text) in the center of the box.

          decoration: BoxDecoration(
            color: Colors.orange, // Background color of the box.

            borderRadius: BorderRadius.circular(12),
            // Round the corners of the box (12 pixels).

            border: Border.all(
              color: Colors.black, // Black color border.
              width: 2, // Border width = 2 pixels.
            ),

            boxShadow: [
              BoxShadow(
                color: Colors.grey, // Shadow color.
                blurRadius: 16, // Blur = how soft the shadow looks.
                offset: Offset(40, 40),
                // Move shadow 4px right and 4px down.
              ),
            ],
          ),

          child: Text(
            "Hello Container!", // Text inside the box.
            style: TextStyle(
              color: Colors.white, // Text color = white.
              fontSize: 16, // Text size = 16.
            ),
          ),
        ),
      ),
    );
  }
}
