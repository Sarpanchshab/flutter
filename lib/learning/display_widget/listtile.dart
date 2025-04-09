import 'package:flutter/material.dart';

// 📦 Stateless widget (because nothing is changing)
class ListTileExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 🧱 App bar at the top
      appBar: AppBar(title: Text("ListTile Example")),

      // 📃 List of items using ListView
      body: ListView(
        children: [

          // 🔹 First ListTile item
          ListTile(
            leading: Icon(Icons.person), // 👤 Icon at the start (left side)
            title: Text("John Doe"), // 📝 Big text (main title)
            subtitle: Text("Software Developer"), // 🧾 Small text under the title
            trailing: Icon(Icons.arrow_forward), // ➡️ Icon at the end (right side)
            onTap: () {
              // 🖱️ Action when user taps this item
              print("Tapped on John");
            },
          ),

          Divider(), // ➖ Line between items (optional)

          // 🔹 Second ListTile item
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/onboarding.jpg'), // 🌐 Show image in circle
            ),
            title: Text("Jane Smith"), // 📝 Name
            subtitle: Text("Graphic Designer"), // 🧾 Job
            trailing: Icon(Icons.message), // 💬 Message icon
            onTap: () {
              // When tapped
              print("Tapped on Jane");
            },
          ),
        ],
      ),
    );
  }
}
