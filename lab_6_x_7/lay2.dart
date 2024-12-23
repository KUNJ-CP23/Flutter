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
                child:Column(
                  children: [
                    Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              flex:3,
                                child: Container(
                                  color: Colors.red,
                                )),
                            Expanded(
                              flex:1,
                                child: Container(
                                  color: Colors.green,
                                ))
                          ],

                        ))]
            )),
            Expanded(
              flex: 2,
                child:Column(
                    children: [
                      Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                  child: Container(
                                    color: Colors.yellow,
                                  )),
                              Expanded(
                                  child: Column(
                                    children: [
                                      Expanded(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  color: Colors.purple,
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  color: Colors.grey,
                                                ),
                                              )
                                            ],
                                          )),
                                      Expanded(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  color: Colors.grey,
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  color: Colors.purple,
                                                ),
                                              )
                                            ],
                                          ))
                                    ],
                                  )),
                              Expanded(
                                  child: Container(
                                    color: Colors.blueGrey,
                                  )),
                            ],

                          ))]
                )),
            Expanded(
              flex: 2,
                child:Column(
                    children: [
                      Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                  child: Container(
                                    color: Colors.black,
                                  )),
                              Expanded(
                                  child: Container(
                                    color: Colors.white,
                                  )),
                              Expanded(
                                  child: Container(
                                    color: Colors.black,
                                  )),
                              Expanded(
                                  child: Container(
                                    color: Colors.white,
                                  ))
                            ],

                          ))]
                )),
            Expanded(
                flex: 2,
                child:Column(
                    children: [
                      Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                  child: Column(
                                    children: [
                                      Expanded(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  color: Colors.purple,
                                                ),
                                              ),
                                              Expanded(
                                                  child: Column(
                                                    children: [
                                                      Expanded(
                                                          child: Row(
                                                            children: [
                                                              Expanded(
                                                                child: Container(
                                                                  color: Colors.black,
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Container(
                                                                  color: Colors.pink,
                                                                ),
                                                              )
                                                            ],
                                                          )),
                                                      Expanded(
                                                          child: Row(
                                                            children: [
                                                              Expanded(
                                                                child: Container(
                                                                  color: Colors.pink,
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Container(
                                                                  color: Colors.black,
                                                                ),
                                                              )
                                                            ],
                                                          ))
                                                    ],
                                                  )),
                                            ],
                                          )),
                                      Expanded(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  color: Colors.grey,
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  color: Colors.purple,
                                                ),
                                              )
                                            ],
                                          ))
                                    ],
                                  )),
                              Expanded(
                                  child: Container(
                                    color: Colors.blueGrey,
                                  )),
                              Expanded(
                                  child: Column(
                                    children: [
                                      Expanded(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                  child: Column(
                                                    children: [
                                                      Expanded(
                                                          child: Row(
                                                            children: [
                                                              Expanded(
                                                                child: Container(
                                                                  color: Colors.black,
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Container(
                                                                  color: Colors.pink,
                                                                ),
                                                              )
                                                            ],
                                                          )),
                                                      Expanded(
                                                          child: Row(
                                                            children: [
                                                              Expanded(
                                                                child: Container(
                                                                  color: Colors.pink,
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Container(
                                                                  color: Colors.black,
                                                                ),
                                                              )
                                                            ],
                                                          ))
                                                    ],
                                                  )),
                                              Expanded(
                                                child: Container(
                                                  color: Colors.grey,
                                                ),
                                              )
                                            ],
                                          )),
                                      Expanded(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  color: Colors.grey,
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  color: Colors.purple,
                                                ),
                                              )
                                            ],
                                          ))
                                    ],
                                  ))
                            ],

                          ))]
                ))
          ],
        )
    );
  }
}
