import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Text1 extends StatelessWidget {
  const Text1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text(
            'Kunjj'
        ),
      ),
      body: Text(
          'Hola!',
        style: TextStyle(
            backgroundColor: Colors.blueAccent,
            color: Colors.white,
          fontSize: 30
        )
      ),
    );
  }
}
