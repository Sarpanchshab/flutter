// Import Flutter UI library
import 'package:flutter/material.dart';

// Create a StatefulWidget named Listview
class Listview extends StatefulWidget {
  const Listview({super.key});

  @override
  State<Listview> createState() => _ListviewState();
}

// Create the state class for the widget
class _ListviewState extends State<Listview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( // Scaffold gives basic app layout
      appBar: AppBar( // Top bar of the app
        title: Text('Hello'), // Title shown in AppBar
      ),

      body: ListView( // A scrollable column (vertical by default)
        // You can add optional properties:
        // scrollDirection: Axis.vertical, // scrolls up-down (default)
        // reverse: true, // reverse the scroll order

        children: [ // List of widgets to show in the list

          // Text item with padding
          Padding(
            padding: const EdgeInsets.all(8.0), // 8px padding all sides
            child: Text(
              'One',
              style: TextStyle(
                  fontSize: 21, // Text size
                  fontWeight: FontWeight.w500 // Semi-bold
              ),
            ),
          ),

          Divider(), // Horizontal line divider

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Two',
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Three',
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Four',
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Five',
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
