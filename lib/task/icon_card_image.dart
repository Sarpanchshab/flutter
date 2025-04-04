import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconCardImage extends StatelessWidget{
  const IconCardImage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Icons, Card, Image"),
      ),

        body: Center(
          child: Card(
            margin: EdgeInsets.all(40.0),
            color: Colors.greenAccent,
            elevation: 20, //

            child: Container(
              width: 400,
              height: 800,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image.asset('assets/ram.jpeg'),
                  ),
                  Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 50,
                  ),
                  Image.network("https://cdn.pixabay.com/animation/2023/01/19/17/23/17-23-21-162_512.gif")
                ],
              ),
            ),
          ),
        )

    );
  }
}