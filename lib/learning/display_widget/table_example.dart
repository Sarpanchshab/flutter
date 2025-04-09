import 'package:flutter/material.dart';


// 🔸 Screen that shows the table
class TableExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Top bar of the app
      appBar: AppBar(
        title: Text("Flutter Table Example"), // Title on AppBar
      ),

      // Main body of the screen
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Add space around the table

        child: Table(
          // 🧱 Add borders around the table cells
          border: TableBorder.all(),

          // 💡 Control the width of columns
          columnWidths: {
            0: FixedColumnWidth(80), // Column 1 is fixed size
            1: FlexColumnWidth(),     // Column 2 takes rest space
          },

          // 📋 Table rows go here
          children: [

            // 🔹 First row (Header row)
            TableRow(
              decoration: BoxDecoration(
                color: Colors.grey[300], // Background color for header
              ),
              children: [
                Padding(
                  padding: EdgeInsets.all(8), // Space inside cell
                  child: Text(
                    "Name", // Column title
                    style: TextStyle(fontWeight: FontWeight.bold), // Bold text
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "Age",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),

            // 🔹 Second row
            TableRow(children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: Text("Alice"), // First cell in row
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text("21"), // Second cell
              ),
            ]),

            // 🔹 Third row
            TableRow(children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: Text("Bob"),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text("24"),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
