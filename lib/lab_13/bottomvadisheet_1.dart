// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class Bottomvadisheet1 extends StatefulWidget {
//   const Bottomvadisheet1({super.key});
//
//   @override
//   State<Bottomvadisheet1> createState() => _Bottomvadisheet1State();
// }
//
// class _Bottomvadisheet1State extends State<Bottomvadisheet1> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Bottom Sheet Demo"),
//       ),
//       body: ElevatedButton(
//           onPressed: (){
//             showModalBottomSheet(
//                 context: context,
//                 builder: (context){
//               return Center(
//                 child: IconButton(onPressed: onPressed, icon: icon),
//               );
//             }
//             );
//           },
//           child: Text("button")
//       ),
//     );
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bottomvadisheet1 extends StatefulWidget {
  const Bottomvadisheet1({super.key});

  @override
  State<Bottomvadisheet1> createState() => _Bottomvadisheet1State();
}

class _Bottomvadisheet1State extends State<Bottomvadisheet1> {
  // Function to handle the icon button press inside the bottom sheet
  void onPressed() {
    print("Icon Button Pressed");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet Demo"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return Center(
                  child: IconButton(
                    onPressed: onPressed,
                    icon: Icon(Icons.access_alarm), // Example icon
                  ),
                );
              },
            );
          },
          child: Text("Open Bottom Sheet"),
        ),
      ),
    );
  }
}
