import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Image1 extends StatefulWidget {
  const Image1({super.key});

  @override
  State<Image1> createState() => Image1State();
}

class Image1State extends State<Image1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Image Asset"),
      // ),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/bcard.jpeg', // Path of the image inside assets folder
            width: 400,           // Set width
            height: 700,          // Set height
            fit: BoxFit.cover,    // Fit the image within the widget
          ),

        ],
      ),
    );
  }
}
