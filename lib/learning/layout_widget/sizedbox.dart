import 'package:flutter/material.dart'; // Flutter UI tools


// Main screen to show all SizedBox uses
class SizedBoxExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SizedBox Examples"), // Top title bar
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0), // Padding around the page

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align left

          children: [

            // ===== 1. Vertical space using SizedBox ===== //
            Text("1. Space between texts"),

            Text("Hello"),
            SizedBox(height: 20), // Adds 20px vertical space
            Text("World"),

            SizedBox(height: 30), // More space before next section

            // ===== 2. Fix size of a widget using SizedBox ===== //
            Text("2. Button with fixed size"),

            SizedBox(
              width: 150, // Button width = 150
              height: 50, // Button height = 50

              child: ElevatedButton(
                onPressed: () {},
                child: Text("Click Me"),
              ),
            ),

            SizedBox(height: 30), // Space before next part

            // ===== 3. Fill full space using SizedBox.expand() ===== //
            Text("3. SizedBox.expand() in a Container"),

            Container(
              height: 100, // Container height = 100
              width: double.infinity, // Full width of screen
              color: Colors.grey[300], // Light gray background

              child: SizedBox.expand(
                // This makes the blue box fill all container space
                child: Container(
                  color: Colors.blue,
                  child: Center(child: Text("I fill all space")),
                ),
              ),
            ),

            SizedBox(height: 30), // Space before last example

            // ===== 4. Invisible space using SizedBox.shrink() ===== //
            Text("4. SizedBox.shrink() (invisible)"),

            Row(
              children: [
                Text("A"),
                SizedBox.shrink(), // This adds 0 space (nothing visible)
                Text("B"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
