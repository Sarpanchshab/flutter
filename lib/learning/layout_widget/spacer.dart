import 'package:flutter/material.dart';


// Screen that shows how Spacer works
class SpacerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spacer Example"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0), // Space around the content

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text("1. Spacer in Row (push right):"),
            SizedBox(height: 10), // Just space between lines

            // First example: push text to right using Spacer
            Row(
              children: [
                Text("Left"),
                Spacer(), // Pushes next widget to the right
                Text("Right"),
              ],
            ),

            SizedBox(height: 30), // space between sections

            Text("2. Multiple Spacers in Row:"),
            SizedBox(height: 10),

            Row(
              children: [
                Text("One"),
                Spacer(flex: 1),   // Small space
                Text("Two"),
                Spacer(flex: 2),   // Bigger space
                Text("Three"),
              ],
            ),

            SizedBox(height: 30),

            Text("3. Spacer in Column (push bottom):"),
            SizedBox(height: 10),

            Container(
              height: 200, // fixed height container
              color: Colors.grey[200], // light background
              child: Column(
                children: [
                  Text("Top"),
                  Spacer(), // Pushes Bottom to bottom
                  Text("Bottom"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
