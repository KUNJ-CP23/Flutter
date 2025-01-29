import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigationBar2 extends StatefulWidget {
  BottomNavigationBar2({super.key});

  @override
  State<BottomNavigationBar2> createState() => _BottomNavigationBar2State();
}

class _BottomNavigationBar2State extends State<BottomNavigationBar2> {

  int curIndex = 0;
  List<Widget> items = [
    Container(
      color: Colors.pinkAccent.shade100,
        child: Center(child: Text("Home Page",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),)
    ),
    Container(
        color: Colors.greenAccent,
        child: Center(child: Text("About Page",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),)
    ),
    Container(
        color: Colors.blueGrey,
        child: Center(child: Text("Person Page",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),)
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: curIndex,
          onTap: (value){
            setState(() {
              curIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.home),label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.account_box_outlined),label: 'about'),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.person),label: 'person'),
          ]
      ),
      body: items[curIndex],
    );
  }
}
