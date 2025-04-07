import 'package:firstproject/task/grofast/homepage.dart';
import 'package:firstproject/task/grofast/mainscreen.dart';
import 'package:firstproject/task/grofast/signup_3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';



class GrowFastLogin extends StatefulWidget {
  const GrowFastLogin({super.key});

  @override
  State<GrowFastLogin> createState() => _GrowFastLoginState();
}

class _GrowFastLoginState extends State<GrowFastLogin> {
  // 🔸 Create a form key
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // 🔸 Create controllers
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 40),
          child: Form(
            // 🔁 Wrap with Form
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 🔹 Heading text
                Text(
                  "Welcome back \n to GroFast !",
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Verdana',
                  ),
                ),

                SizedBox(height: 60),

                // 🔹 Name input with validation
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Full Name',
                    label: Text('Enter Your Full Name'),
                    prefixIcon: Icon(Icons.person),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Full Name is required';
                    }
                    return null;
                  },
                ),

                SizedBox(height: 20),

                // 🔹 Password input with validation
                TextFormField(
                  controller: passwordController,
                  obscureText: true, // hide password
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Password',
                    label: Text('Enter Your Password Here'),
                    prefixIcon: Icon(Icons.password),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password is required';
                    } else if (value.length < 6) {
                      return 'Password must be at least 6 characters';
                    }
                    return null;
                  },
                ),

                SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "forgot password ?",
                      style: TextStyle(fontFamily: 'Courier New'),
                    ),
                  ],
                ),

                SizedBox(height: 30),

                // 🔹 Submit Button
                SizedBox(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      minimumSize: Size(double.infinity, 60), // height = 60
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=>  GroFastMainScreen())
                        );
                      }
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 19),
                    ),
                  ),
                ),

                SizedBox(height: 25),
                Center(
                  child: Text(
                    "Create an Account",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.deepOrange,
                      fontFamily: 'Courier New',
                    ),
                  ),
                ),

                SizedBox(height: 70),

                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[200],
                    minimumSize: Size(double.infinity, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  icon: Icon(Icons.g_mobiledata, color: Colors.black, size: 32),
                  label: Text(
                    "Continue with Google",
                    style: TextStyle(color: Colors.black, fontSize: 19),
                  ),
                ),

                SizedBox(height: 10),

                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[200],
                    minimumSize: Size(double.infinity, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  icon: Icon(Icons.facebook, color: Colors.black, size: 25),
                  label: Text(
                    "Continue with Facebook",
                    style: TextStyle(color: Colors.black, fontSize: 19),
                  ),
                ),

                //sign textfield
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                  Text.rich(
                      TextSpan(
                        text:"Don't have an account?",
                        style: TextStyle(fontSize: 18),
                        children: [
                          TextSpan(
                            text: " Sign Up",
                            style: TextStyle(color: Colors.blue, fontSize: 18),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context)=> GroFastSignup())
                                );
                              }

                          )
                        ]
                      )
                      ),
                    ]

                    ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
