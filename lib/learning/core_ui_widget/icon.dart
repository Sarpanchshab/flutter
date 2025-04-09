import 'package:flutter/material.dart';


class IconPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Icon Examples')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Basic Icons:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

            Icon(Icons.home), // home icon
            Icon(Icons.phone), // phone icon
            Icon(Icons.email), // email icon

            SizedBox(height: 20), // space

            Text('Icons with Color:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

            Icon(Icons.favorite, color: Colors.red), // red heart icon
            Icon(Icons.star, color: Colors.yellow), // yellow star

            SizedBox(height: 20),

            Text('Icons with Size:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

            Icon(Icons.alarm, size: 40), // big icon
            Icon(Icons.settings, size: 50), // bigger icon

            SizedBox(height: 20),

            Text('Icons in Row:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

            Row(
              children: [
                Icon(Icons.thumb_up),
                SizedBox(width: 10),
                Icon(Icons.thumb_down),
                SizedBox(width: 10),
                Icon(Icons.share),
              ],
            ),

            SizedBox(height: 20),

            Text('Icon with Text:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

            Row(
              children: [
                Icon(Icons.person, color: Colors.blue),
                SizedBox(width: 8),
                Text('User Profile'),
              ],
            ),

            SizedBox(height: 20),

            Text('Icon Button:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

            IconButton(
              icon: Icon(Icons.delete),
              color: Colors.red,
              iconSize: 30,
              onPressed: () {
                print('Delete icon clicked');
              },
            ),
          ],
        ),
      ),
    );
  }
}
