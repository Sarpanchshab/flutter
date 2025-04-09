import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp());
}

// ✅ StatefulWidget because slider value changes
class SliderExample extends StatefulWidget {
  @override
  _SliderExampleState createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  // 🔢 This variable stores the current value of the slider
  double sliderValue = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Slider Example")),

      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 📍 Slider widget
            Slider(
              value: sliderValue,         // 📌 current slider value
              min: 0,                     // 🔽 minimum value
              max: 100,                   // 🔼 maximum value
              divisions: 10,              // 🔟 optional steps (0,10,20,...100)
              label: sliderValue.round().toString(), // 🏷️ show number while sliding
              activeColor: Colors.blue,   // 🎨 color of active bar
              inactiveColor: Colors.grey, // 🎨 color of inactive bar

              // 🔄 called when user moves the slider
              onChanged: (double newValue) {
                setState(() {
                  sliderValue = newValue; // 🔄 update the value
                });
              },
            ),

            SizedBox(height: 20),

            // 🖥️ Show the current slider value
            Text(
              "Value: ${sliderValue.toStringAsFixed(1)}", // e.g., 50.0
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
