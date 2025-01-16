import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Layout2 extends StatelessWidget {
  const Layout2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LAYOUT'),
      ),
      body: Row(
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
