import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Layout3_1 extends StatelessWidget {
  const Layout3_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LAYOUT'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
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
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: Container(
                      color: Colors.amber,
                    )),
                Expanded(
                    child: Container(
                      color: Colors.blueGrey,
                    )),
                Expanded(
                    child: Container(
                      color: Colors.purple,
                    ))
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: Container(
                      color: Colors.black,
                    )),
                Expanded(
                    child: Container(
                      color: Colors.redAccent,
                    )),
                Expanded(
                    child: Container(
                      color: Colors.orange,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
