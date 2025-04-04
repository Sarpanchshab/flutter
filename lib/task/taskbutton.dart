import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return (Scaffold(
      appBar: AppBar(),

      body: Container(
        height: 220,
        width: 1000,
        margin: EdgeInsets.only(left:8),
        padding: EdgeInsets.all(12.0,),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black)
        ),
        child: Column(

          children: [
            Row(
              children: [
                Text(
                  "Pet the dogo at least twice!",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold// Set the font size here
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Text(
                  "Description",
                  style: TextStyle(
                    fontSize: 15, // Set the font size here
                  ),
                ),
              ],
            ),

            Padding(
              padding: EdgeInsets.only(top: 18.0, bottom: 12),
              child: Row(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5) // Set this to zero for a rectangle
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment
                              .center, // Optional: centers the icon and text
                      children: [
                        Icon(Icons.file_copy), // The icon
                        SizedBox(
                          width: 8,
                        ), // Optional: Adds space between the icon and text
                        Text("Due date"), // The text
                      ],
                    ),
                  ),
                  SizedBox(width: 8),

                  OutlinedButton(
                    onPressed: () {},

                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5) // Set this to zero for a rectangle
                      ),
                    ),

                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment
                              .center, // Optional: centers the icon and text
                      children: [
                        Icon(Icons.flag), // The icon

                        SizedBox(
                          width: 8,
                        ), // Optional: Adds space between the icon and text
                        Text("Priority"), // The text
                      ],
                    ),
                  ),

                  SizedBox(width: 8),
                  OutlinedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5) // Set this to zero for a rectangle
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment
                              .center, // Optional: centers the icon and text
                      children: [
                        Icon(Icons.watch), // The icon
                        SizedBox(
                          width: 8,
                        ), // Optional: Adds space between the icon and text
                        Text("Due date"), // The text
                      ],
                    ),
                  ),
                  SizedBox(width: 8),
                  OutlinedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5) // Set this to zero for a rectangle
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment
                              .center, // Optional: centers the icon and text
                      children: [
                        Text("..."), // The text
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Divider(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text("#"),
                    SizedBox(width: 5),
                    Text("Personal"),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
                Row(
                    children: [
                      ElevatedButton(
                        onPressed: () => print('Cancel button'), // Wrapped in a function
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5) // Set this to zero for a rectangle
                          ),
                        ),
                        child: Text("Cancel"),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5) // Set this to zero for a rectangle
                          ),
                        ),
                        onPressed: () => print('Add task'), // Wrapped in a function// Fixed property name
                          child: Text('Add Task',
                            style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                          ),

                      ),
                    ]

                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
