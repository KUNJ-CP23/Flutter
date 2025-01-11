import 'package:flutter/material.dart';

class Decoration1 extends StatelessWidget {
  var name;

   Decoration1({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/bcard.jpeg',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 125.0, vertical: 200),
            child: Text(
              name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,

              ),
            ),
          ),
        ],
      ),
    );
  }
}
