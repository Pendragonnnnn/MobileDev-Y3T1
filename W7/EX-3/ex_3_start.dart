import 'package:flutter/material.dart';

List<String> images = [
  "assets/bird.jpg",
  "assets/bird2.jpg",
  "assets/insect.jpg",
  "assets/girl.jpg",
  "assets/man.jpg",
];



void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false, // Why this line ? Can you explain it ?
      home: ImageCarousel(),
    ));

class ImageCarousel extends StatefulWidget {
  const new({
    super.key,
  });

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  int imageIndex = 0;
  void handleNext(){
    setState(() {
      imageIndex++;
      if (imageIndex == images.length){
        imageIndex = 0;
      }
    });
  }

  void handleBack(){
    setState(() {
      imageIndex--;
      if(imageIndex < 0){
        imageIndex = images.length - 1;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: const Text('Image viewer'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.navigate_before),
            tooltip: 'Go to the previous image',
            onPressed: handleBack,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
            child: IconButton(
              icon: const Icon(Icons.navigate_next),
              tooltip: 'Go to the next image',
              onPressed: handleNext,
            ),
          ),
        ],
      ),
      body: Image.asset(images[imageIndex]),
    );
  }
}
