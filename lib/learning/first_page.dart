import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Creating a StatelessWidget class
class FirstPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar at top
      appBar: AppBar(
        title: Text(
          "Ubitech Software Solutions PVT. LTD", // Corrected LMT to LTD
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.white, // White text color
          ),
        ),
        backgroundColor: Colors.greenAccent, // Purple background
        elevation: 15, // Shadow depth
        shadowColor: Colors.green, // Shadow color
      ),

      // Main body of the page
      body: Container(
        color: Colors.blue,
        width: 600,
        height: 400,
        child: Column(
          children: [
            Row(
              children: [
                Column(children: [
                  Text('Name: Madhusudan '),
                  Text('Surname: Prajapati')
                ],)
              ],
            )

          ],

        ),
      )
    );
  }
}
