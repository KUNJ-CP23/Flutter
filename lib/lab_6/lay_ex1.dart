import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LAYOUT'),
      ),
      body: Column(
        children: [
          Expanded(
            flex:1,
            child: Row(
              children: [
                Expanded(
                    child: Container(
                      color: Colors.blueGrey,
                    ))
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  flex:2,
                    child: Container(
                      color: Colors.amber,
                    )),
                Expanded(
                  flex: 1,
                    child: Container(
                      color: Colors.black12,
                    ))
              ],
            ),
          ),
          Expanded(
            flex: 1,
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
