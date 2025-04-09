import 'package:flutter/material.dart';


// 🔹 Main screen with ExpansionTile
class ExpansionTileExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ExpansionTile Example"), // 🔸 App bar title
      ),

      body: ListView(
        children: [

          // 📦 ExpansionTile is like a dropdown
          ExpansionTile(
            title: Text("Fruits"), // 🏷️ Main title always visible
            subtitle: Text("Tap to see more"), // Small text below title
            leading: Icon(Icons.food_bank), // Icon at the start
            trailing: Icon(Icons.arrow_drop_down), // Icon at end (optional)

            // 🔽 This part shows when user taps the tile
            children: [
              ListTile(
                title: Text("Apple"),
              ),
              ListTile(
                title: Text("Banana"),
              ),
              ListTile(
                title: Text("Orange"),
              ),
            ],
          ),

          // You can add more tiles like this
          ExpansionTile(
            title: Text("Vegetables"),
            children: [
              ListTile(title: Text("Tomato")),
              ListTile(title: Text("Potato")),
              ListTile(title: Text("Carrot")),
            ],
          ),
        ],
      ),
    );
  }
}
