import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StudentRegistration extends StatefulWidget {
  const StudentRegistration({super.key});

  @override
  State<StudentRegistration> createState() => _StudentRegistrationState();
}

class _StudentRegistrationState extends State<StudentRegistration> {
  
  final _formKey = GlobalKey<FormState>(); // 🔹 Form key for validation

  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Radio button state for gender selection
  String selectedGender = "Male"; // Default selected value

  // Checkbox states for hobbies
  bool reading = false;
  bool traveling = false;
  bool gaming = false;

  bool isHobbySelected = true; // To track validation

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(


   child:  Center(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Form(
            key: _formKey, // 🔹 Wrap the form with a key
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 1st line - Title
                SizedBox(height: 20),

                Text(
                  'Student Registration',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 20),

                // 2nd line - Name input fields
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: _firstNameController,
                        decoration: InputDecoration(
                          labelText: 'First Name',
                          hintText: 'Enter your first name',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) { // 🔹 Validation for first name
                          if (value == null || value.isEmpty) {
                            return 'Please enter your first name';
                          }
                          return null;
                        },
                      ),
                    ),

                    SizedBox(width: 10),

                    Expanded(
                      child: TextFormField(
                        controller: _lastNameController,
                        decoration: InputDecoration(
                          labelText: 'Last Name',
                          hintText: 'Enter your last name',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) { // 🔹 Validation for last name
                          if (value == null || value.isEmpty) {
                            return 'Please enter your last name';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20),

                //3rd line EMAIL & MOBILE NO.
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          labelText: 'Email Name',
                          hintText: 'Enter your email',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) { // 🔹 Validation for first name
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          return null;
                        },
                      ),
                    ),

                    SizedBox(width: 10),

                    Expanded(
                      child: TextFormField(
                        controller: _phoneController,
                        decoration: InputDecoration(
                          labelText: 'Phone No.',
                          hintText: 'Enter your Phone No.',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) { // 🔹 Validation for last name
                          if (value == null || value.isEmpty) {
                            return 'Please enter your last name';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 10,),

                //4TH LINE CITY
                Row(
                  children: [

                    Expanded(
                      child: TextFormField(
                        controller: _cityController,
                        decoration: InputDecoration(
                          labelText: 'City',
                          hintText: 'Enter your city',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) { // 🔹 Validation for first name
                          if (value == null || value.isEmpty) {
                            return 'Please enter your city';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(width: 170,)

                  ],
                ),

                SizedBox(height: 20),

                Divider(),

                SizedBox(height: 20),

                //5th line radio male female
                Text("Select Gender:", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ListTile(
                  title: Text("Male"),
                  leading: Radio(
                    value: "Male",
                    groupValue: selectedGender,
                    onChanged: (value) {
                      setState(() {
                        selectedGender = value.toString();
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text("Female"),
                  leading: Radio(
                    value: "Female",
                    groupValue: selectedGender,
                    onChanged: (value) {
                      setState(() {
                        selectedGender = value.toString();
                      });
                    },
                  ),
                ),

                Divider(),

                //6th line Checkbox
                SizedBox(height: 10),

                Text("Select Your Hobbies:", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),

                CheckboxListTile(
                  title: Text("Reading"),
                  value: reading,
                  onChanged: (bool? value) { // This function runs when the checkbox is clicked
                    setState(() {  // setState() tells Flutter to update the UI
                      reading = value!; // Assigns the new checkbox value to the `reading` variable
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text("Traveling"),
                  value: traveling,
                  onChanged: (bool? value) {
                    setState(() {
                      traveling = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text("Gaming"),
                  value: gaming,
                  onChanged: (bool? value) {
                    setState(() {
                      gaming = value!;
                    });
                  },
                ),

                if (!isHobbySelected)
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "Please select at least one hobby",
                      style: TextStyle(color: Colors.red, fontSize: 14),
                    ),
                  ),

                Divider(),

                // ),

                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: _passwordController, //  Controller to get text
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Enter password',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) { //
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          } else if (value.length < 6) {
                            return 'Password must be at least 6 characters';
                          }
                          return null; //
                        },
                      ),
                    ),
                  ],
                ),


                // Submit Button
                Center(
                  child: ElevatedButton(
                    onPressed: () {

                      setState(() {
                        isHobbySelected = reading || traveling || gaming;
                      });

                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Form Submitted Successfully")),
                        );
                      }
                    },
                    child: Text("Register"),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),

      )
    );
  }
}
