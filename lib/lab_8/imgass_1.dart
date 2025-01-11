// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class Image1 extends StatefulWidget {
//   const Image1({super.key});
//
//   @override
//   State<Image1> createState() => Image1State();
// }
//
// class Image1State extends State<Image1> {
//   @override
//   Widget build(BuildContext context) {
//     bool flag = false;
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: const Text("Image Asset"),
//       // ),
//       body: flag ?
//       Stack(
//         children: [
//           Image.asset(
//             'assets/images/bcard.jpeg', // Path of the image inside assets folder
//             width: 400,           // Set width
//             height: 700,          // Set height
//             fit: BoxFit.cover,    // Fit the image within the widget
//           ),
//           Center(
//               child: TextField(
//
//                 style:  TextStyle(
//                   fontSize: 30,
//
//                 ),
//               )
//           )
//         ],
//       ) :          Column(
//             children: [
//               TextFormField(
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'Enter Valid Name';
//                   }
//                   if (!RegExp(
//                       r'^[A-Z]{1}[a-z ]+$')
//                       .hasMatch(value)) {
//                     return 'Enter Valid Name';
//                   }
//                   return null;
//                 },
//                 controller: nameController,
//                 decoration: InputDecoration(
//                   hintText: 'Enter your name',
//                   labelText: 'Enter your name',
//                   // labelStyle: TextStyle(color: Colors.black),
//                   suffixIcon: Padding(
//                     padding: const EdgeInsets.only(right: 15),
//                     child: Icon(
//                       Icons.close,
//                       size: 16,
//                     ),
//                   ),
//                   fillColor: Colors.red,
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                 ),
//               ),
//             ],
//           )
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Image1 extends StatefulWidget {
  const Image1({super.key});

  @override
  State<Image1> createState() => Image1State();
}

class Image1State extends State<Image1> {
  bool flag = false;
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Image Asset Example"),
      // ),
      body: flag
          ? Stack(
        children: [
          Image.asset(
            'assets/images/bcard.jpeg',
            width: double.infinity,     // Full width
            height: double.infinity,   // Full height
            fit: BoxFit.cover,         // Fit the image within the widget
          ),
          Center(
            child: Text(nameController.text)
          ),
        ],
      )
          : Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter Valid Name';
                  }
                  if (!RegExp(r'^[A-Z]{1}[a-z ]+$').hasMatch(value)) {
                    return 'Enter Valid Name';
                  }
                  return null;
                },
                controller: nameController,
                decoration: InputDecoration(
                  // hintText: 'Enter your name',
                  labelText: 'Enter Name!',
                  suffixIcon: IconButton(
                    onPressed: () {
                      nameController.clear();
                    },
                    icon: const Icon(Icons.close, size: 16),
                  ),
                  fillColor: Colors.redAccent,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  flag = true; // Switches to the image display mode
                });
              },
              child: const Text('Click me'),
            ),
          ],
        ),
      ),
    );
  }
}

