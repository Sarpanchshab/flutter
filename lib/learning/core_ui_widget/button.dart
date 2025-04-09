import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Different Types of Buttons')),
      body: Padding(
        padding: EdgeInsets.all(26.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: Text('Elevated Button')),

            TextButton(onPressed: () {}, child: Text('Text Button')),

            OutlinedButton(onPressed: () {}, child: Text('Outlined Button')),

            IconButton(onPressed: () {}, icon: Icon(Icons.star)),

            CupertinoButton(onPressed: () {}, child: Text('Cupertino Button')),

            FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
          ],
        ),
      ),
    );
  }
}
