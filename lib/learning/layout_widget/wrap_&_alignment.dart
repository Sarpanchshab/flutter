import 'package:flutter/material.dart';


// Screen with Wrap and Align
class WrapAlignExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wrap & Align Example"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0), // space around the body
        child: Column(
          children: [

            // ===== Wrap Example ===== //
            Text(
              "Wrap Example (Buttons auto wrap)",
              style: TextStyle(fontSize: 18),
            ),

            Wrap(
              spacing: 10, // space between widgets (horizontally)
              runSpacing: 20, // space between lines (vertically)
              children: [
                ElevatedButton(onPressed: () {}, child: Text("One")),
                ElevatedButton(onPressed: () {}, child: Text("Two")),
                ElevatedButton(onPressed: () {}, child: Text("Three")),
                ElevatedButton(onPressed: () {}, child: Text("Four")),
                ElevatedButton(onPressed: () {}, child: Text("Five")),
                ElevatedButton(onPressed: () {}, child: Text("Six")),
              ],
            ),

            SizedBox(height: 30), // space

            // ===== Align Example ===== //
            Text(
              "Align Example (Box at bottom right)",
              style: TextStyle(fontSize: 18),
            ),

            Container(
              color: Colors.grey[300], // light grey background
              height: 150,
              width: double.infinity,

              child: Align(
                alignment: Alignment.centerLeft, // place box bottom right
                child: Container(
                  height: 50,
                  width: 100,
                  color: Colors.blue,
                  child: Center(child: Text("I’m here!")),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
