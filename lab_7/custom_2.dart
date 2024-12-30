import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Custom2 extends StatelessWidget {
  const Custom2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: customText(
          name: "Hello From Kunj !!",
          clr: Colors.greenAccent,
          bgcolor : Colors.black),
    );
  }
  Widget customText({
    required String name ,
    required Color clr,
    required bgcolor
  }) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.fromLTRB(90, 250, 80, 20),
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Text(
        name,
        style: TextStyle(
          color: clr,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
