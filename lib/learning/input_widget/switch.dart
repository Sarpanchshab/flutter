import 'package:flutter/material.dart';


// ✅ Use StatefulWidget because switch value will change
class SwitchExample extends StatefulWidget {
  @override
  _SwitchExampleState createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  // 🔘 This variable stores ON/OFF state of switch
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Switch Example")),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 🔘 Switch widget
            Switch(
              value: isSwitched, // true = ON, false = OFF
              onChanged: (bool value) {
                setState(() {
                  isSwitched = value; // update the value when toggled
                });
              },
              activeColor: Colors.green, // color when switch is ON
              inactiveThumbColor: Colors.red, // thumb color when OFF
            ),

            SizedBox(height: 10),

            // 📃 Show ON/OFF text based on switch state
            Text(
              isSwitched ? "Switch is ON" : "Switch is OFF",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
