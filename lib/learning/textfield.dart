import 'package:flutter/material.dart';


// This is a stateful widget, because we want to change data (text)
class MyTextFieldPage extends StatefulWidget {
  @override
  _MyTextFieldPageState createState() => _MyTextFieldPageState();
}

// This is the state (logic) of the page
class _MyTextFieldPageState extends State<MyTextFieldPage> {
  // Controller to control the TextField (get what user typed)
  TextEditingController myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField Example'), // title on top bar
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0), // space around the box
        child: Column(
          children: [
            // 👇 This is the input box
            TextField(
              controller: myController, // link controller to get text
              decoration: InputDecoration(
                labelText: 'Enter something', // hint text
                border: OutlineInputBorder(), // box border
              ),
            ),

            SizedBox(height: 20), // space between box and button

            // 👇 This is the button
            ElevatedButton(
              onPressed: () {
                // when button is clicked, show popup with the typed text
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: Text('You typed: ${myController.text}'),
                  ),
                );
              },
              child: Text('Show Text'), // button text
            ),
          ],
        ),
      ),
    );
  }
}
