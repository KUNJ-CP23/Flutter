import 'package:flutter/material.dart';

class Imageass1_2 extends StatelessWidget {
  String imageUrl = "https://in.pinterest.com/pin/nature-background--737183032774342112/600x400.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Network Image Example"),
      ),
      body: Center(
        child : Image.network("$imageUrl")
      ),
    );
  }
}

