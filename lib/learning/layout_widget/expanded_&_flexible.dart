import 'package:flutter/material.dart';
// Import Flutter UI tools


// Screen with Expanded and Flexible widgets
class ExpandedFlexibleExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded & Flexible Example"),
        // Title on top AppBar
      ),

      body: Column(
        children: [

          // ===== Row using Expanded ===== //
          Text(
            "Row with Expanded: Expanded takes all free space in rows & column ",
            style: TextStyle(fontSize: 18),
          ),

          Row(
            children: [

              Expanded(
                // This takes half of available space
                child: Container(
                  height: 80, // height of box
                  color: Colors.red,
                  child: Center(child: Text("Expanded 1")),
                ),
              ),

              Expanded(
                // This takes the other half
                child: Container(
                  height: 80,
                  color: Colors.green,
                  child: Center(child: Text("Expanded 2")),
                ),
              ),
              
            ],
          ),

          SizedBox(height: 30), // space between rows

          // ===== Row using Flexible ===== //
          Text(
            "Row with Flexible",
            style: TextStyle(fontSize: 18),
          ),

          Row(
            children: [

              Flexible(
                flex: 1, // 1 part of space
                fit: FlexFit.loose,
                // Takes space if available (not forced)

                child: Container(
                  height: 80,
                  color: Colors.blue,
                  child: Center(child: Text("Flexible 1")),
                ),
              ),

              Flexible(
                flex: 2, // 2 parts of space
                fit: FlexFit.tight,
                // Must take space, fills it

                child: Container(
                  height: 80,
                  color: Colors.orange,
                  child: Center(child: Text("Flexible 2")),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
