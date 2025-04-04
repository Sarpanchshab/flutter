import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class gridview extends StatefulWidget {
  const gridview({super.key});

  @override
  State<gridview> createState() => _gridviewState();
}

class _gridviewState extends State<gridview> {
  @override
  Widget build(BuildContext context) {

    var arrColors = [Colors.red,
      Colors.orange,
      Colors.amber,
      Colors.black45,
      Colors.black,
      Colors.deepOrange,
      Colors.blueGrey,
      Colors.yellowAccent
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Hello'),
      ),

      // body: GridView.count(crossAxisCount: 4,
      // crossAxisSpacing: 11,
      // mainAxisSpacing: 15,
      // children: [
      //   Container(color: arrColors[0],),
      //   Container(color: arrColors[1],),
      //   Container(color: arrColors[2],),
      //   Container(color: arrColors[3],),
      //   Container(color: arrColors[4],),
      //   Container(color: arrColors[5],),
      //   Container(color: arrColors[6],),
      //   Container(color: arrColors[7],),
      // ],),

      //ye ui ke according container show hoga jab pata nii ho dynamic ho
      // body: GridView.extent(maxCrossAxisExtent: 100,
      // crossAxisSpacing: 11,
      // mainAxisSpacing: 15,
      // children: [
      //   Container(color: arrColors[0],),
      //   Container(color: arrColors[1],),
      //   Container(color: arrColors[2],),
      //   Container(color: arrColors[3],),
      //   Container(color: arrColors[4],),
      //   Container(color: arrColors[5],),
      //   Container(color: arrColors[6],),
      //   Container(color: arrColors[7],),
      // ],),

      body: GridView.builder( itemBuilder: (context, index){
        return Container( color: arrColors[index],);
      },
          itemCount: arrColors.length, gridDelegate:
      SliverGridDelegateWithMaxCrossAxisExtent(
          // crossAxisCount: 3,
        maxCrossAxisExtent: 100,
          crossAxisSpacing: 3,
        mainAxisSpacing: 11
      )),

    );
  }
}
