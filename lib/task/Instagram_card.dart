import 'package:flutter/material.dart';

class InstagramCard extends StatelessWidget {
  const InstagramCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("InstagramCard")),

      body: Center(
        child: Container(
          width: 400,
          height: 550,

          decoration: BoxDecoration(
            color: Colors.transparent, // Set color inside BoxDecoration
            border: Border.all(color: Colors.black12, width: 1),
          ),

          child: Column(
            children: [
              //top 1st row
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    child: CircleAvatar(
                      radius: 20, // Adjust the size as needed
                      backgroundImage: AssetImage('assets/1.jpg'),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 15, left: 250),
                    child: Text("3h"),
                  ),
                ],
              ),

              //2nd row middle
              Column(
                children: [
                  Image.asset(
                    'assets/profile.png',
                    width: 400,
                    height: 350,
                    fit: BoxFit.cover,
                  ),
                ],
              ),

              //third row
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Icon(Icons.import_contacts),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 8, left: 1),
                    child: Text("3 Comments"),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8, left: 150),
                    child: Row(
                      children: [Icon(Icons.ice_skating), Text("17 Likes")],
                    ),
                  ),
                ],
              ),

              //fourth row
              Container(
                margin: EdgeInsets.only(top: 8, left: 10),
                child: Row(
                  children: [
                    Icon(Icons.ice_skating),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Text("Add Comment"),
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
