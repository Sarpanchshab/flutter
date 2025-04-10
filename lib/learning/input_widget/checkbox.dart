import 'package:flutter/material.dart';


// ✅ This is a StatefulWidget because the checkbox value can change
class CheckboxExample extends StatefulWidget {
  @override
  _CheckboxExampleState createState() => _CheckboxExampleState();
}

// ✅ This is the state class where we manage the checkbox value
class _CheckboxExampleState extends State<CheckboxExample> {
  bool isChecked = false; // This stores if checkbox is checked or not

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Checkbox Example")), // Top title bar

      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [

            // ✅ Checkbox widget
            Checkbox(
              value: isChecked,
              // current state
              onChanged: (value) {
                setState(() {
                  isChecked = value!; // update state
                });
              },
            ),

            // ✅ Text changes based on checkbox
            Text(isChecked ? "✔️ Accepted" : "☐ Accept Terms"),
          ],
        ),
      ),
    );
  }
}
