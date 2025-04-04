import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskSession extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ram"),
      ),

      body:Center(
        child:Container(
          height: 500,
          width: 400,
          color: Colors.grey,
          
          child:Column(
            children: [

              //1st Container for row
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(20),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Row(
                        children: [
                          Image.asset('assets/profile.png',height: 50,width:50),
                          Text("Ram")
                        ],
                      ),
                      Text("14h")
                    ],
                  )

              ),

              //2nd image bar
              Image.asset('assets/ram.jpeg'),

              //3rd row

              Container(
                height: 100,
                color: Colors.white,
                child: Column(
                  children: [
                    Padding( // Fixed 'padding' to 'Padding'
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.message),
                              SizedBox(width: 5), // Added spacing
                              Text("3 Comments"),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.favorite_border),
                              SizedBox(width: 5), // Added spacing
                              Text("17 likes"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(),

                    Row(
                      children: [
                        Icon(Icons.favorite_border),
                        Container(
                          padding: EdgeInsets.only(left:8),
                          child: Text("Add Comments...")
                        )
                      ],
                    )
                  ],
                ),
              )


            ],
          )
        )
      )
    );
  }
}