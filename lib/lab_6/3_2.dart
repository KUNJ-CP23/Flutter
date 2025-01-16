import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Layout3_2 extends StatelessWidget {
  const Layout3_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LAYOUT'),
      ),
      body: Row(
        children: [
          Expanded(
              child: Column(
                children: [
                  Expanded(
                      child: Container(
                        color: Colors.red,
                      )),
                  Expanded(
                      child: Container(
                        color: Colors.green,
                      )),
                  Expanded(
                      child: Container(
                        color: Colors.blue,
                      ))
                ],
              )),
          Expanded(
              child: Column(
                children: [
                  Expanded(
                      flex:2,
                      child: Container(
                        color: Colors.amber,
                      )),
                  Expanded(
                      flex:2,
                      child: Container(
                        color: Colors.blueGrey,
                      )),
                  Expanded(
                      flex:1,
                      child: Container(
                        color: Colors.purple,
                      ))
                ],
              )),
          Expanded(
              child: Column(
                children: [
                  Expanded(
                      flex:1,
                      child: Container(
                        color: Colors.black,
                      )),
                  Expanded(
                      flex:3,
                      child: Container(
                        color: Colors.redAccent,
                      )),
                  Expanded(
                      flex:2,
                      child: Container(
                        color: Colors.orange,
                      ))
                ],
              ))
        ],
      )
    );
  }
}
