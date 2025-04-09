import 'package:flutter/material.dart';



// ✅ Stateful widget because dropdown value changes
class DropdownExample extends StatefulWidget {
  @override
  _DropdownExampleState createState() => _DropdownExampleState();
}

class _DropdownExampleState extends State<DropdownExample> {
  // 🔸 This stores the selected item
  String selectedValue = 'Apple';

  // 🔸 Dropdown options
  List<String> items = ['Apple', 'Banana', 'Mango', 'Orange'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DropdownButton Example')),

      body: Center(
        child:

        DropdownButton<String>(
          value: selectedValue, // 🌟 shows selected item
          icon: Icon(Icons.arrow_drop_down), // 🔽 dropdown arrow icon
          style: TextStyle(fontSize: 18, color: Colors.black), // 🖋 text style

          // ✅ When user selects a new item
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue!;
            });
          },

          // 🔁 Make dropdown items from the list
          items: items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value, // set item value
              child: Text(value), // show item text
            );
          }).toList(), // convert list to dropdown menu

        ),

      ),
    );
  }
}
