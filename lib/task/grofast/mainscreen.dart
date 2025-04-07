import 'package:firstproject/task/grofast/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Instagram_card.dart';
import 'categories.dart';

class GroFastMainScreen extends StatefulWidget {
  const GroFastMainScreen({super.key});

  @override
  State<GroFastMainScreen> createState() => _GroFastMainScreenState();
}

class _GroFastMainScreenState extends State<GroFastMainScreen> {
  int selectNavVal = 0;

  // Removed GroceryHomeScreen from list to avoid infinite loop
  List pages = [
    GroceryHomeScreen(),
    GroFastCategories(),
    Center(child: Text("Cart Page")),
    Center(child: Text("Account Page")),
  ];
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        // This shows the current selected page in center
        body: Center(
          child: pages.elementAt(selectNavVal), // show page based on index
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectNavVal,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.category), label: "Categories"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
          ],
          onTap: (value) {
            setState(() {
              selectNavVal = value;
            });
          },
        ),
      );
  }
}
