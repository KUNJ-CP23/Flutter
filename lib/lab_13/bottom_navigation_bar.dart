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
        child: Text("Home"),
        )
  ];
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class BottomNavigationBar2 extends StatefulWidget {
//   BottomNavigationBar2({super.key});
//
//
//   @override
//   State<BottomNavigationBar2> createState() => _BottomNavigationBar2State();
// }
//
// class _BottomNavigationBar2State extends State<BottomNavigationBar2> {
//
//   int currentIndex=0;
//   List<Widget> items=[
//     Container(
//       height: 300,
//       width: 300,
//       child: Center(child: Text('Home')),
//     ),
//     Container(
//       height: 300,
//       width: 300,
//       child: Center(child: Text('About')),
//     ),
//     Container(
//       height: 300,
//       width: 300,
//       child: Center(child: Text('Person')),
//     ),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//           currentIndex: currentIndex,
//           onTap: (value){
//             setState(() {
//               currentIndex=value;
//             });
//           },
//           items: [
//             BottomNavigationBarItem(icon: Icon(CupertinoIcons.home),label: 'home'),
//             BottomNavigationBarItem(icon: Icon(Icons.account_box_outlined),label: 'about'),
//             BottomNavigationBarItem(icon: Icon(CupertinoIcons.person),label: 'person'),
//           ]),
//
//       body: items[currentIndex],
//     );
//   }
// }
