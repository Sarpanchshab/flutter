import 'package:flutter/material.dart';


class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Image Examples')), // top bar with title
      body: SingleChildScrollView( // to make screen scrollable
        child: Padding(
          padding: EdgeInsets.all(16), // space around page
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // 1. Simple image from internet
              Text('Network Image:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Image.network(
                'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/e6/f4/6b/the-foodie-works-dishes.jpg?w=900&h=500&s=1', // image URL
              ),

              SizedBox(height: 20), // space

              // 2. Image with fixed size
              Text('Image with Width & Height:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Image.network(
                'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/e6/f4/6b/the-foodie-works-dishes.jpg?w=900&h=500&s=1',
                width: 100, // width = 100
                height: 100, // height = 100
              ),

              SizedBox(height: 20),

              // 3. Image fills full box (may cut image)
              Text('Image with BoxFit.cover:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Container(
                width: 200,
                height: 100,
                color: Colors.grey, // background color of box
                child: Image.network(
                  'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/e6/f4/6b/the-foodie-works-dishes.jpg?w=900&h=500&s=1',
                  fit: BoxFit.cover, // fill and crop image
                ),
              ),

              SizedBox(height: 20),

              // 4. Image fits inside box (no crop)
              Text('Image with BoxFit.contain:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Container(
                width: 200,
                height: 100,
                color: Colors.grey,
                child: Image.network(
                  'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/e6/f4/6b/the-foodie-works-dishes.jpg?w=900&h=500&s=1',
                  fit: BoxFit.contain, // fit whole image
                ),
              ),

              SizedBox(height: 20),

              // 5. Image with color overlay
              Text('Image with Color Filter:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Image.network(
                'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/e6/f4/6b/the-foodie-works-dishes.jpg?w=900&h=500&s=1',
                color: Colors.red.withOpacity(0.5), // red filter with 50% see-through
                colorBlendMode: BlendMode.colorBurn, // blend mode
              ),

              SizedBox(height: 20),

              // 6. Image with rounded corners
              Text('Rounded Image:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ClipRRect(
                borderRadius: BorderRadius.circular(20), // round border
                child: Image.network(
                  'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/e6/f4/6b/the-foodie-works-dishes.jpg?w=900&h=500&s=1',
                  width: 150,
                  height: 150,
                ),
              ),

              SizedBox(height: 20),

              // 7. Circle image (profile pic style) from network image
              Text('Circle Image: From Network ', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              CircleAvatar(
                backgroundImage: NetworkImage('https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/e6/f4/6b/the-foodie-works-dishes.jpg?w=900&h=500&s=1'),
                radius: 40, // circle size
              ),

              SizedBox(height: 20),

              //8. circle avatar image from local path
              Text('Circle Image: From Local Path', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              CircleAvatar(
                backgroundImage: AssetImage('assets/onboarding.jpg'), // local image
                radius: 50, // circle size
              ),
            ],
          ),
        ),
      ),
    );
  }
}
