// Import Flutter UI libraries
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Create a StatefulWidget named listviewbuilder
class listviewbuilder extends StatefulWidget {
  const listviewbuilder({super.key});

  @override
  State<listviewbuilder> createState() => _listviewbuilderState();
}

// State class of the widget
class _listviewbuilderState extends State<listviewbuilder> {
  @override
  Widget build(BuildContext context) {

    // ✅ A list of names
    var arrNames = ['Raman', 'Ramanujan', 'Rakesh', 'Ramdas',"Rajesh"];

    return Scaffold( // Basic layout with app bar and body
      appBar: AppBar(
        title: Text("Hello"), // AppBar title
      ),

      // ✅ ListView.builder creates list items dynamically
      body: ListView.builder(

        itemBuilder: (context, index) {
          // This builds each item in the list using the index
          return Text(
            arrNames[index], // Show name from arrNames
            style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w500
            ),
          );
        },

        // 🔢 Number of items to build
        itemCount: arrNames.length, // 5 items in list

        // 🔁 Reverses the order (optional)
        reverse: true,

        // 📏 Sets fixed size for each item (height/width)
        itemExtent: 100, // Since scroll is horizontal → this sets width

        // ↔️ Scroll direction (horizontal)
        scrollDirection: Axis.horizontal, // List scrolls left-right
      ),
    );
  }
}
