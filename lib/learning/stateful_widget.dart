import 'package:flutter/material.dart'; // 📦 Flutter UI tools

// ✅ This is a StatefulWidget → can change UI when value changes
class StatefulWidgetExample extends StatefulWidget {
  @override
  _StatefulWidgetExampleState createState() => _StatefulWidgetExampleState();
// ⬆️ Connects to the logic/state class below
}

// ✅ This is the "State" class → holds data and updates screen
class _StatefulWidgetExampleState extends State<StatefulWidgetExample> {
  int counter = 0; // 🔢 This is a variable to store the count

  @override
  Widget build(BuildContext context) {
    return Scaffold( // 🏗️ Page layout
      appBar: AppBar(
        title: Text('Stateful Example'), // 🔤 Top bar title
      ),
      body: Center( // 📍 Center everything on the screen
        child: Column( // 📦 Show widgets in vertical order
          mainAxisAlignment: MainAxisAlignment.center, // ⬇️ Center vertically
          children: [
            Text('You clicked:'), // ➕ Static text
            Text(
              '$counter', // 🧮 Show the value of counter
              style: TextStyle(fontSize: 32), // ✏️ Make it big
            ),
            SizedBox(height: 20), // ➖ Add space

            // ✅ Button
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter++; // ➕ Increase counter by 1
                }); // 📢 setState tells Flutter: "Refresh the screen!"
              },
              child: Text('Click Me'), // 🖱️ Button text
            ),
          ],
        ),
      ),
    );
  }
}
