import 'package:firstproject/task/coffee_cafe_3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'coffee_cafe_2.dart';

class CoffeeCaffin extends StatefulWidget {
  const CoffeeCaffin({super.key});

  @override
  State<CoffeeCaffin> createState() => _CoffeeCaffinState();
}

class _CoffeeCaffinState extends State<CoffeeCaffin> {
  var arrlist = ['Vanilla', 'Strawberry', 'Chocolate', 'Pineapple', 'Peanuts'];

  final List<Map<String, String>> coffeeItems = const [
    {"name": "Frappuccino", "price": "₹ 400", "image": "assets/food1.jpg"},
    {"name": "Iced Americano", "price": "₹ 350", "image": "assets/food1.jpg"},
    {"name": "Iced Americano", "price": "₹ 350", "image": "assets/food1.jpg"},
    {"name": "Iced Americano", "price": "₹ 350", "image": "assets/food1.jpg"},
    {"name": "Cold Brew", "price": "₹ 450", "image": "assets/food1.jpg"},
    {"name": "Iced Coffee", "price": "₹ 300", "image": "assets/food1.jpg"},
  ];

  int selectNavVal = 0;
  List pages = [CoffeeCaffin(), PageTwo(), Pagethird()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Coffee Caffin Task")),

      // **Drawer**
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // **Drawer Header**
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.account_circle, size: 60, color: Colors.white),
                  SizedBox(height: 10),
                  Text(
                    "Hello, Madhusudan Prajapati!",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),

            // **Drawer Items**
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.pop(context); // Closes the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      body: Container(
        color: Colors.yellow[300],
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            children: [
              // 1st Title
              Center(
                child: Text("CoffeeCaffin's", style: TextStyle(fontSize: 21)),
              ),

              //2nd div
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [Text("Menu", style: TextStyle(fontSize: 18))],
                ),
              ),

              // Search Box
              TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                ),
              ),

              // Categories Title
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("Categories", style: TextStyle(fontSize: 18)),
                  ],
                ),
              ),

              //list view builder
              SizedBox(
                height: 50, // Set a fixed height
                child: ListView.builder(
                  itemCount: arrlist.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder:
                      (context, index) => Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.brown),
                        ),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment:
                              CrossAxisAlignment
                                  .baseline, // Align based on text baseline
                          textBaseline:
                              TextBaseline
                                  .alphabetic, // Required when using baseline alignment
                          children: [
                            Icon(
                              Icons.food_bank,
                              size: 15,
                            ), // Adjust size to match text
                            SizedBox(width: 5),
                            Text(
                              arrlist[index],
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                ),
              ),

              //grid view
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                    itemCount: coffeeItems.length,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,
                          crossAxisSpacing: 11,
                          mainAxisSpacing: 11,
                        ),
                    itemBuilder: (context, index) {
                      final item = coffeeItems[index];
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                item["image"]!,
                                height: 63,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                item["name"]!,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                item["price"]!,
                                style: const TextStyle(color: Colors.brown),
                              ),
                              IconButton(
                                icon: const Icon(
                                  Icons.add_circle,
                                  color: Colors.brown,
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
        currentIndex: selectNavVal,
        onTap: (value) {
          print("Select Index $value");
          setState(() {
            selectNavVal = value;
          });

          // Navigate to different pages based on index
          if (value == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CoffeeCaffin(),
              ), // Replace with your page
            );
          } else if (value == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PageTwo(),
              ), // Replace with your page
            );
          } else if (value == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Pagethird(),
              ), // Fixed closing parenthesis
            );
          }
        },
      ),
    );
  }
}
