import 'package:flutter/material.dart';

// Main widget with dots
class ImageSliderPageWithDots extends StatefulWidget {
  @override
  ImageSliderWithDotsState createState() => ImageSliderWithDotsState();
}

// State class for the ImageSlider
class ImageSliderWithDotsState extends State<ImageSliderPageWithDots> {
  // List of images from assets
  final List<String> imageList = [
    'assets/onboarding.jpg',
    'assets/onboarding.jpg',
    'assets/onboarding.jpg',
    'assets/onboarding.jpg',
  ];

  int currentIndex = 0; // to know which image is showing
  final PageController _controller = PageController(); // to control PageView

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image Slider")),

      // main screen body
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 400,
            height: 300,
            padding: EdgeInsets.all(20),
            child: Stack( // Stack lets us put dots over image
              children: [
                // image slider
                PageView.builder(
                  controller: _controller,
                  itemCount: imageList.length,
                  onPageChanged: (index) {
                    setState(() {
                      currentIndex = index; // update dot when image changes
                    });
                  },
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(12), // round image corners
                      child: Image.asset(
                        imageList[index],
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    );
                  },
                ),

                // dots inside the image (bottom center)
                Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: // This Row will hold dots below the image slider
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center, // Center the dots horizontally
                    children: List.generate(imageList.length, (index) {
                      // Create one dot for each image in imageList

                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 4), // Space between dots

                        // Size of dot: bigger (12) if it's the current one, else smaller (8)
                        width: currentIndex == index ? 12 : 8,
                        height: currentIndex == index ? 12 : 8,

                        decoration: BoxDecoration(
                          shape: BoxShape.circle, // Make dot round

                          // Dot color: white if active, black if not
                          color: currentIndex == index
                              ? Colors.white // Active image dot
                              : Colors.black, // Inactive dots
                        ),
                      );
                    }),
                  )

                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
