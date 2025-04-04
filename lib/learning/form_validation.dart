// Import Flutter Material UI library
import 'package:flutter/material.dart';

// This is a StatefulWidget for form validation
class FormValidationWidget extends StatefulWidget {
  const FormValidationWidget({super.key});

  @override
  State<FormValidationWidget> createState() => _FormValidationWidgetState();
}

// This is the state class
class _FormValidationWidgetState extends State<FormValidationWidget> {

  // This key is used to check the form is valid or not
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // This controller helps us to get the text entered by the user
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(  // Scaffold gives structure (App layout)
      body: Container( // Container gives fixed size to the form
        height: 500,
        width: 1000,
        child: Form( // Form widget holds input fields and connects to formKey
            key: formKey, // Connect the form to the GlobalKey
            child: Column( // Column shows items vertically
              children: [

                // Text input field for name
                TextFormField(
                  // This validator checks if the input is empty
                  validator: (value){
                    if(value!.isEmpty){
                      // If empty, show this message
                      return "Please enter text";
                    }
                    return null; // If not empty, no error
                  },
                  // Connect the text field to the controller
                  controller: nameController,
                ),

                // Button to submit the form
                ElevatedButton(
                    onPressed: () {
                      // Check if form is valid, print true/false
                      print("Is validate ${formKey.currentState!.validate()}");

                      // Print the name entered in the text field
                      print("Name Value is ${nameController.text}");

                      // If valid, you can do some action here
                      if(formKey.currentState!.validate()){
                        // Example: you can show success message
                      }
                    },

                    // Text on the button
                    child: Text("Register")
                )
              ],
            )),
      ),
    );
  }
}
