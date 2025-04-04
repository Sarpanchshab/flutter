import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwo {
}

class _PageTwoState extends State<PageTwo> {
  var arrlist = ['Vanilla', 'Strawberry', 'Chocolate', 'Pineapple', 'Peanuts'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
      ),
      body: Container(
        color: Colors.yellow[300],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align left
          children: [
            // 1st Image
            Image.asset('assets/coffee.jpg'),

            // 2nd + - Buttons
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: const Icon(Icons.add, size: 20),
                  ),
                  const SizedBox(width: 10), // Add spacing
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: const Icon(Icons.remove, size: 20),
                  ),
                ],
              ),
            ),

            // 3rd Title
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "Proppucino",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),

            // 4th Description Text
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "A piece of writing, typically expressing an author's "
                    "perspective or argument on a particular topic, often structured "
                    "with an introduction, body paragraphs, and a conclusion.",
                textAlign: TextAlign.justify,
              ),
            ),

            // ListView Builder
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "List",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),

            SizedBox(
              height: 50, // Fixed height
              child: ListView.builder(

                itemCount: arrlist.length,
                scrollDirection: Axis.horizontal,

                itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(60),
                    border: Border.all(color: Colors.brown),
                  ),
                  child: Text(
                    arrlist[index],
                    style: const TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
              ),
            ),

            //6th Container
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Description of items' ,style: TextStyle(fontSize: 18),),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 50,
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black)
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.book, size: 30,),
                        Text('book',style: TextStyle(fontSize: 15),),

                      ],
                    ),
                    ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 50,
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black)
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.ice_skating, size: 30,),
                        Text('Read',style: TextStyle(fontSize: 15),),

                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 50,
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black)
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.favorite, size: 30,),
                        Text('Heart',style: TextStyle(fontSize: 15),),

                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 40,
                    height: 40,
                    margin: EdgeInsets.only(left: 50),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black)
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.pending_sharp, size: 30,),

                      ],
                    ),
                  ),
                ),
              ],
            ),

            //7th Container

            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text("Total Amount",style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('400/Rs.' , style: TextStyle(
                        fontSize: 30
                      ),)
              ]


                  ),

                  Container(
                    margin: EdgeInsets.only(left: 60),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red, // Button color
                        fixedSize: Size(200, 40), // Set width & height
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero, // Rectangle shape (No rounded corners)
                        ),
                      ),
                      onPressed: () {},
                      child: Text("Add To Cart", style: TextStyle(color: Colors.white)),
                    ),
                  )


                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
