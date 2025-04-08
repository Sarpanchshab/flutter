import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ram {
  int a = 10;
  int b = 20;
  String c = "Radha";
}

class ClassOntap extends StatefulWidget {
  const ClassOntap({super.key});

  @override
  State<ClassOntap> createState() => _ClassOntapState();
}

class _ClassOntapState extends State<ClassOntap> {

  int number = 0;
  String name = "ram";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Class Ontap"),
      ),
      body: Center(
        child: Column(
          children: [
            Text('${number}'),
            Text('${name}'),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                Ram shyam = Ram();
                print(shyam.a);
                print(shyam.c);

                //Set State is used for update the variable in main function
                setState(() {
                  number = shyam.a;
                  name = shyam.c;
                });
              },
              child: Text("Click!"),
            ),
          ],
        ),
      ),
    );
  }
}
