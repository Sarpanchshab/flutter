import 'package:firstproject/task/grofast/categories.dart';
import 'package:flutter/material.dart';

import '../Instagram_card.dart';

class GroceryHomeScreen extends StatefulWidget {
  @override
  State<GroceryHomeScreen> createState() => _GroceryHomeScreenState();
}

class _GroceryHomeScreenState extends State<GroceryHomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Grocery App", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        leading: Icon(Icons.menu, color: Colors.black),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.black),
            onPressed: () {},
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Greeting Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hey, Madhusudan 👋",
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                        Text("Find fresh groceries you want",
                            style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("assets/onboarding.jpg"),
                    )
                  ],
                ),

                SizedBox(height: 20),

                // Search Bar
                TextField(
                  decoration: InputDecoration(
                    hintText: "Search fresh groceries",
                    prefixIcon: Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),

                SizedBox(height: 20),

                // Promo Banner
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green[100],
                    image: DecorationImage(
                      image: AssetImage("assets/onboarding.jpg"),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.3),
                        BlendMode.darken,
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("New Member", style: TextStyle(color: Colors.white, fontSize: 18)),
                      Text("40% OFF", style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold)),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.green,
                        ),
                        child: Text("Shop now"),
                      )
                    ],
                  ),
                ),

                SizedBox(height: 30),

                Text("Categories", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildCategory("Fruits", "assets/onboarding.jpg"),
                      SizedBox(width: 15),
                      buildCategory("Vegetables", "assets/onboarding.jpg"),
                      SizedBox(width: 15),
                      buildCategory("Meats", "assets/onboarding.jpg"),
                      SizedBox(width: 15),
                      buildCategory("Drinks", "assets/onboarding.jpg"),
                    ],
                  ),
                ),

                SizedBox(height: 30),

                Text("Popular", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
      ),

    );
  }


  Widget buildCategory(String title, String imagePath) {
    return Column(
      children: [
        Container(
          height: 80,
          width: 80,
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Image.asset(imagePath, fit: BoxFit.contain),
        ),
        SizedBox(height: 8),
        Text(title),
      ],
    );
  }
}
