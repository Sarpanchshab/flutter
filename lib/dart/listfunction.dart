import 'package:flutter/material.dart';


class ListFunction extends StatelessWidget {
  // This is the list
  final List users = [
    {'name': 'Raj', 'email': 'raj@gmail.com'},
    {'name': 'Amit', 'email': 'amit@gmail.com'},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('User List')),
        body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(users[index]['name']),
              subtitle: Text(users[index]['email']),
            );
          },
        ),
      ),
    );
  }
}
