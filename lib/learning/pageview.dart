import 'package:flutter/material.dart';


class ImageSliderPage extends StatelessWidget {
  // List of image URLs (you can use your own URLs or assets)
  final List<String> imageList = [
    'assets/onboarding.jpg',
    'assets/onboarding.jpg',
    'assets/onboarding.jpg',
    'assets/onboarding.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image Slider")),
      body: Container(
        width: 400,
        height: 300,
        child: PageView.builder(
          itemCount: imageList.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: [BoxShadow(blurRadius: 5, color: Colors.grey.shade400)],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  imageList[index],
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
