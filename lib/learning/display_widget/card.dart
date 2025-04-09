import 'package:flutter/material.dart';


// ✅ Use StatelessWidget since we are not changing anything
class ImageCardExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Card with Image")),

      body: Padding(
        padding: EdgeInsets.all(16),
        child: Card(
          elevation: 6, // 🌫️ Shadow under the card
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // ⭕ Rounded corners
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // 🖼️ Image at the top of the card
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                child: Image.asset(
                  'assets/onboarding.jpg', // 🌐 Load image from internet
                  width: double.infinity, // 🧱 full width
                  height: 220,
                  fit: BoxFit.cover, // 🔲 cover the full box
                ),
              ),

              Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 📝 Title text
                    Text(
                      "Beautiful View",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),

                    // 🧾 Subtitle or description
                    Text(
                      "This is a scenic view of mountains and sky. Cards are useful to show content with image.",
                      style: TextStyle(fontSize: 16),
                    ),

                    SizedBox(height: 12),

                    // 🔘 Action button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Explore"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
