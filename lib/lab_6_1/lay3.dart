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
        body: Row(
          children: [
            Expanded(
                child: Column(
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
                                  color: Colors.pinkAccent,
                                ))
                          ],
                        )),
                    Expanded(
                        child: Row(
                          children: [
                            Expanded(
                                child: Container(
                                  color: Colors.red,
                                )),
                            Expanded(
                                child: Container(
                                  color: Colors.yellowAccent,
                                )),
                            Expanded(
                                child: Container(
                                  color: Colors.black,
                                ))
                          ],
                        )),
                    Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              flex:2,
                                child: Container(
                                  color: Colors.orange  ,
                                )),
                            Expanded(
                              flex: 1,
                                child: Container(
                                  color: Colors.pinkAccent,
                                )),
                            Expanded(
                              flex: 1,
                                child: Container(
                                  color: Colors.black,
                                ))
                          ],
                        ))
                  ],
                )),
            Expanded(
                child: Column(
                  children: [
                    Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              flex:2,
                                child: Container(
                                  color: Colors.brown,
                                )),
                            Expanded(
                              flex: 1,
                                child: Container(
                                  color: Colors.yellowAccent,
                                )),
                            Expanded(
                              flex: 3,
                                child: Container(
                                  color: Colors.green,
                                ))
                          ],
                        )),
                    Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              flex:2,
                                child: Container(
                                  color: Colors.purpleAccent,
                                )),
                            Expanded(
                                flex:2,
                                child: Container(
                                  color: Colors.greenAccent,
                                )),
                            Expanded(
                                flex:3,
                                child: Container(
                                  color: Colors.yellow,
                                )),
                            Expanded(
                                flex:1,
                                child: Container(
                                  color: Colors.lightBlueAccent,
                                )),
                            Expanded(
                                flex:1,
                                child: Container(
                                  color: Colors.blue,
                                ))
                          ],
                        )),
                    Expanded(
                        child: Column(
                          children: [
                            Expanded(
                                flex:1,
                                child: Container(
                                  color: Colors.red  ,
                                )),
                            Expanded(
                                flex: 1,
                                child: Container(
                                  color: Colors.pinkAccent,
                                )),
                            Expanded(
                                flex: 2,
                                child: Container(
                                  color: Colors.green,
                                ))
                          ],
                        )),
                    Expanded(
                        child: Row(
                          children: [
                            Expanded(
                                flex:2,
                                child: Container(
                                  color: Colors.grey,
                                )),
                            Expanded(
                                flex:1,
                                child: Container(
                                  color: Colors.yellowAccent,
                                )),
                            Expanded(
                                flex:1,
                                child: Container(
                                  color: Colors.purpleAccent,
                                ))
                          ],
                        )),
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
                                  color: Colors.black,
                                ))
                          ],
                        ))
                  ],
                ))
          ],
        )
    );
  }
}
