// Import Flutter Material UI library
import 'package:flutter/material.dart';

// This is a StatefulWidget because data (text) can change
class FormValidationWidget extends StatefulWidget {
  const FormValidationWidget({super.key});

  @override
  State<FormValidationWidget> createState() => _FormValidationWidgetState();
}

// This class holds the UI and logic
class _FormValidationWidgetState extends State<FormValidationWidget> {
  // Create a key to check form is valid or not
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // Create a controller to get the text from input box
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Makes screen layout (AppBar, Body etc.)
      body: Container(
        // Container gives fixed size to form area
        height: 500, // Set height
        width: 1000, // Set width
        child: Form(
          // Form widget to manage validation
          key: formKey, // Connect form with the GlobalKey
          child: Center(
            child: Column(
              // Column shows children in vertical line
              children: [
                // Text input field
                // Add a name label above the field
                Text("Name", style: TextStyle(fontSize: 16)),

                // Text input field with label inside the box
                Container(
                  margin: EdgeInsets.only(top: 40),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter your name", // Label inside the input box
                      border: OutlineInputBorder(), // Adds a box border
                    ),

                    // This checks if the input is empty
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter text"; // Show error if empty
                      }
                      return null; // No error
                    },

                    controller: nameController, // Connect text field to controller
                  ),
                ),

                // Submit button
                ElevatedButton(
                  onPressed: () {
                    // Check if form is valid or not
                    print("Is validate ${formKey.currentState!.validate()}");

                    // Print the name entered by user
                    print("Name Value is ${nameController.text}");

                    // If form is valid, do something
                    if (formKey.currentState!.validate()) {
                      // You can show a success message, save data etc.
                    }
                  },
                  child: Text("Register"), // Text on the button
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
