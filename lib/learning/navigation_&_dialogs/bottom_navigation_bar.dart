// These are packages you're using in the project
import 'package:firstproject/task/Instagram_card.dart';
import 'package:firstproject/learning/first_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// This is a StatefulWidget named bottomBar
class bottomBar extends StatefulWidget {
  const bottomBar({super.key});

  @override
  State<bottomBar> createState() => _bottomBarState();
}

// This is the state class of bottomBar
class _bottomBarState extends State<bottomBar> {

  // This is the selected tab index (0 = Home, 1 = Profile, 2 = Setting)
  int selectNavVal = 0;

  // This is the list of pages to show based on selected index
  List pages = [
    FirstPage(), // Home Page
    Text("Profile Image"), // Simple Text for Profile
    InstagramCard() // Setting page (custom widget)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // This is the top app bar
      appBar: AppBar(
        title: Text("Bottom Bar"),
      ),

      // This shows the current selected page in center
      body: Center(
        child: pages.elementAt(selectNavVal), // show page based on index
      ),

      // This is the bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        items: [ // 3 buttons in bottom nav
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.account_box), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting")
        ],

        // This sets which button is active
        currentIndex: selectNavVal,

        // This runs when a button is tapped
        onTap: (value) {
          print("Select Index ${value}"); // just print index in console
          setState(() {
            selectNavVal = value; // change tab
          });
        },
      ),

    );
  }
}
