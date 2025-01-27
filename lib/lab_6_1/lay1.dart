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
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                          color: Colors.red,
                        )),
                    Expanded(
                        child: Column(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        color: Colors.yellow,
                                      ),

                                    ),
                                    Expanded(
                                      child: Container(
                                        color: Colors.pinkAccent,
                                      ),

                                    )
                                  ],
                                ),
                        ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        color: Colors.pinkAccent,
                                      ),

                                    ),
                                    Expanded(
                                      child: Container(
                                        color: Colors.yellow,
                                      ),

                                    )
                                  ],
                                ),
                              )
                    ],
                    ),

                    ),

                  ],
                )),
            Expanded(
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                          color: Colors.amber,
                        )),
                    Expanded(
                        child: Row(
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
                    )),
                    Expanded(
                        child: Container(
                          color: Colors.purple,
                        ))
                  ],
                )),
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
                ))
          ],
        ),
    );
  }
}
