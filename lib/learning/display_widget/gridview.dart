import 'package:flutter/material.dart';

// ✅ This is a stateful widget. It can change when user interacts.
class GridViewScreen extends StatefulWidget {
  const GridViewScreen({super.key});

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  // 🎨 List of colors to show in the grid boxes
  // We will use this to give color to each grid item
  var arrColors = [
    Colors.red,
    Colors.orange,
    Colors.amber,
    Colors.black45,
    Colors.black,
    Colors.deepOrange,
    Colors.blueGrey,
    Colors.yellowAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 🧱 App bar at the top
      appBar: AppBar(
        title: Text('GridView Example'), // Title text
        backgroundColor: Colors.orange,  // App bar color
      ),

      // 🔳 Main grid view
      body: GridView.builder(
        itemCount: arrColors.length, // 👉 How many boxes to show (8 colors)

        // 👇 This makes each grid item (box)
        itemBuilder: (context, index) {
          return Container(
            color: arrColors[index],       // 🎨 Set color from list based on index
            margin: EdgeInsets.all(4),     // 🧍‍♂️ Space around each box
            height: 100,                   // (optional) height of each box
            width: 100,                    // (optional) width of each box
            child: Center(
              child: Text(
                'Box ${index + 1}',        // 📦 Show box number inside the box
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        },

        // ⚙️ Controls the grid layout
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 100, // 📏 Max width of each box
          crossAxisSpacing: 3,     // ↔️ Space between columns (left-right)
          mainAxisSpacing: 11,     // ↕️ Space between rows (top-bottom)
        ),
      ),
    );
  }
}
