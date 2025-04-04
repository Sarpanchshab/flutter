import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),

      body: Center(
        child: Container(
          width: 320,
          height: 600,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 9),
            borderRadius: BorderRadius.circular(25),
          ),

          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [

                //1st back button
                Row(
                  children: [
                    Icon(Icons.arrow_back),
                    SizedBox(width: 12),
                    Text(
                      "Back",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                // 2nd welcome container
                Container(
                  margin: EdgeInsets.only(top: 8),
                  child: Row(
                    children: [
                      Text(
                        "Welcome to GoTaxi",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                        ),
                      ),
                    ],
                  ),
                ),

                //3rd name container
                Container(
                  margin: EdgeInsets.only(top: 10),

                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(4),
                  ),

                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Name", style: TextStyle(fontSize: 10)),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Madhusudan Prajapati ",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                //4th  email container
                Container(
                  margin: EdgeInsets.only(top: 8),

                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(4),
                  ),

                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Email", style: TextStyle(fontSize: 10)),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "monu1999june@gmail.com",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                //5h mob. no. container
                Container(
                  margin: EdgeInsets.only(top: 8),

                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(4),
                  ),

                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Mobile Number",
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.flag),
                                SizedBox(width: 8),
                                Text(
                                  "+91 7987388619",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                //6th Gender Container
                Container(
                  margin: EdgeInsets.only(top: 8),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(4)
                  ),
                  child: ListTile(
                    title: Text("Gender"),
                    trailing: Icon(Icons.arrow_drop_down),
                  ),
                ),

                //7th text Container
                Container(
                  margin: EdgeInsets.only(top: 13),
                  child: Text(
                    "By creating an account, you agree with \n Our Terms of Service & Privacy Policy",
                    style: TextStyle(
                      fontSize: 11,

                    ),
                  ),
                ),

                //8th Signup Button
                Container(
                  margin: EdgeInsets.only(top: 8),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(

                      backgroundColor: Colors.deepOrange,
                      minimumSize: Size(double.infinity, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero, //
                      ),
                    ),

                    child: Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  )
                  ,
                ),

                //9th Google FB Button
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Google Button
                      OutlinedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white, // Button color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.g_mobiledata, color: Colors.black),
                            SizedBox(width: 8),
                            Text(
                              "Google",
                              style: TextStyle(
                                  fontSize: 14, color: Colors.black),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(width: 12),

                      // Facebook Button
                      OutlinedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.facebook, color: Colors.black),
                            SizedBox(width: 8), //
                            Text(
                              "Facebook",
                              style: TextStyle(
                                  fontSize: 14, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                //10 Do you have any account container
                Container(
                  margin: EdgeInsets.only(top: 12),
                  child: RichText(

                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Don't have an account? ",
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                        TextSpan(
                          text: "Sign Up",
                          style: TextStyle(fontSize: 12,
                              color: Colors.orange,
                              fontWeight: FontWeight.bold), // Highlighted text
                        ),
                      ],
                    ),
                  ),
                ),

                //bottom navigation bar
                // Container(
                //   margin: EdgeInsets.only(top:15),
                //   decoration: BoxDecoration(
                //     color: Colors.white,
                //
                //   ),
                //   child: BottomNavigationBar(
                //     items: [
                //       BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                //       BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
                //       BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
                //
                //     ],
                //   ),
                // )


              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],


      ),
    );
  }
}



