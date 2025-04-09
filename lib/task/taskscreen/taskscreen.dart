import 'package:flutter/material.dart';

class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  // Controllers
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

  // Task List
  List<Map<String, String>> tasks = [
    {
      "title": "Morning Exercise",
      "desc": "Need to go to the gym for the exercise.",
      "tag": "Urgent Important",
      "status": "Incompleted"
    },
    {
      "title": "Buy Grocery",
      "desc": "Egg, Chicken, Vegetables and fruits",
      "tag": "Urgent Important",
      "status": "Incompleted"
    },
    {
      "title": "Shopping",
      "desc": "Need to buy a shirt for me",
      "tag": "Not Urgent Important",
      "status": "Incompleted"
    },
  ];

  // Show Form Dialog
  void _showForm() {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(
          "Personal Detail",
          style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        content: SingleChildScrollView(
          child: Column(
            children: [
              _textField("Enter name", nameController),
              _textField("Enter email Id", emailController),
              _textField("Enter phone Number", phoneController),
              _textField("Enter password", passwordController, isPassword: true),
              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: () {
                  Navigator.of(context).pop(); // Close form dialog
                  _showConfirmDialog();
                },
                child: Text("Save"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Confirm Dialog
  void _showConfirmDialog() {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Are you sure you want to save this data?",
              style: TextStyle(color: Colors.green),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text("No"),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Close confirm dialog

                    // Show bottom sheet
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container(
                          padding: EdgeInsets.all(16),
                          height: 250,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Name: ${nameController.text}", style: TextStyle(color: Colors.black)),
                              Text("Phone: ${phoneController.text}"),
                              Text("Email: ${emailController.text}"),
                              Text("Password: ${passwordController.text}"),
                              SizedBox(height: 20),
                              Center(
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context); // close bottom sheet

                                    // THEN clear after closing
                                    setState(() {
                                      tasks.add({
                                        "title": nameController.text,
                                        "desc": emailController.text,
                                        "tag": phoneController.text,
                                        "status": passwordController.text,
                                      });

                                      nameController.clear();
                                      emailController.clear();
                                      phoneController.clear();
                                      passwordController.clear();
                                    });
                                  },
                                  child: Text("Close"),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Text("Yes"),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }

  // Reusable TextField Widget
  Widget _textField(String label, TextEditingController controller, {bool isPassword = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextField(
        controller: controller,
        obscureText: isPassword,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: label,
        ),
      ),
    );
  }

  // Reusable Task Card Widget
  Widget _taskCard(String title, String desc, String tag, String status) {
    return Card(
      color: Colors.teal.shade900,
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: ListTile(
        title: Text(title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(desc, style: TextStyle(color: Colors.white70)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(tag, style: TextStyle(color: Colors.white60)),
                Text(status, style: TextStyle(color: Colors.white60)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Build UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        title: Text("Welcome to Taskly"),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          ToggleButtons(
            isSelected: [true, false, false],
            children: [
              Padding(padding: EdgeInsets.all(8), child: Text("ALL")),
              Padding(padding: EdgeInsets.all(8), child: Text("URGENT IMPORTANT")),
              Padding(padding: EdgeInsets.all(8), child: Text("URGENT NOT")),
            ],
            onPressed: (int index) {},
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                final task = tasks[index];
                return _taskCard(
                  task["title"]!,
                  task["desc"]!,
                  task["tag"]!,
                  task["status"]!,
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showForm,
        child: Icon(Icons.add),
        backgroundColor: Colors.teal,
      ),
    );
  }
}
