import 'package:flutter/material.dart';

class BottomSheetExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BottomSheet Example")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return Container(
                  padding: EdgeInsets.all(16),
                  height: 200,
                  child: Column(
                    children: [
                      Text("Hello! This is a BottomSheet."),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text("Close"),
                      ),
                    ],
                  ),
                );
              },
            );
          },
          child: Text("Open Modal BottomSheet"),
        ),
      ),
    );
  }
}
