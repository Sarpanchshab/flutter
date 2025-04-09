import 'package:flutter/material.dart';

class TextFieldExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TextField Example')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),

        child: TextField(
          decoration: InputDecoration(
            labelText: 'Enter text', // Label inside the text field
            hintText: 'Type something...', // Placeholder text when typing
            border: OutlineInputBorder(), // Adds a box around the field
          ),

        ),
      ),
    );
  }
}

