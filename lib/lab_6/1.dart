import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Layout1 extends StatelessWidget {
  const Layout1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LAYOUT'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
                color: Colors.red,
              )),
          Expanded(
              child: Container(
                color: Colors.greenAccent,
              )),
          Expanded(
              child: Container(
                color: Colors.blueAccent,
              ))
        ],
      ),
    );
  }
}
