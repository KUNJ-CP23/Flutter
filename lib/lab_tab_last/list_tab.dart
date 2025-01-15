import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tab_view_list extends StatelessWidget {
  Tab_view_list({super.key});

  List<String> li = [
    "ele1",
    "elel2",
    "ele2,ele1",
    "elel2",
    "ele2,ele1",
    "elel2",
    "ele2,ele1",
    "elel2",
    "ele2,ele1",
    "elel2",
    "ele2",
    "ele1",
    "elel2",
    "ele2"
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(tabs: [
              Tab(
                child: Text('listview'),
              ),
              Tab(
                child: Text('listview.builder'),
              ),
            ]),
          ),
          body: TabBarView(children: [
            Center(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 200,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 200,
                      color: Colors.pink,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 200,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            Center(
              child: ListView.builder(
                  itemBuilder: (BuildContext contex, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text('${li[index]}'),
                    );
                  },
                  itemCount: li.length),
            ),
          ]),
        ));
  }
}
