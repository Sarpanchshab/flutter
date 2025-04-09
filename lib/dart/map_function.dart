import 'package:flutter/material.dart';


class MapFunction extends StatelessWidget {
  // 🔹 Original list
  final List names = ['Raj', 'Amit', 'Neha'];

  @override
  Widget build(BuildContext context) {

    // 🔹 Use map() to convert names to UPPERCASE and create Text widgets
    List<Widget> nameWidgets = names.map((name) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          name.toUpperCase(), // convert name to uppercase
          style: TextStyle(fontSize: 20),
        ),
      );
    }).toList();


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Name List')),
        body: Column(
          children: nameWidgets, // show all names
        ),
      ),
    );
  }
}
