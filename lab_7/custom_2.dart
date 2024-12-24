import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: customText(
          name: "KUnj",
          clr: Colors.pinkAccent,
          bgcolor : Colors.black),
    );
  }
  Widget customText({required String name , required Color clr, required bgcolor}){
    return Text(name,style: TextStyle(
        color: clr,
      backgroundColor: bgcolor
    ),);
  }
}
