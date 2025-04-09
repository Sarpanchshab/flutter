import 'package:flutter/material.dart';
// Import Flutter Material UI


class RowColumnExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row & Column Example"),
        // Top AppBar title
      ),
      body: Center(
        // Center the whole layout on screen
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // Place children in vertical center

          crossAxisAlignment: CrossAxisAlignment.center,
          // Align children to center horizontally

          children: [
            Text(
              "Top Text",
              style: TextStyle(fontSize: 20),
            ), // First text on top

            SizedBox(height: 20),
            // Add space between widgets (20 pixels)

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // Even space between icons

              children: [
                Icon(Icons.star, size: 40, color: Colors.orange), // star icon
                Icon(Icons.favorite, size: 40, color: Colors.red), // heart icon
                Icon(Icons.thumb_up, size: 40, color: Colors.blue), // like icon
              ],
            ), // Row of icons

            SizedBox(height: 20),
            // More space

            Text(
              "Bottom Text",
              style: TextStyle(fontSize: 20),
            ), // Last text
          ],
        ),
      ),
    );
  }
}
