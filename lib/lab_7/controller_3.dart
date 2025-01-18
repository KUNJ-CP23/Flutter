// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class Controller3 extends StatefulWidget {
//   const Controller3({super.key});
//
//   @override
//   State<Controller3> createState() => _LayoutState();
// }
//
// class _LayoutState extends State<Controller3> {
//   TextEditingController name = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//
//
//     return Scaffold(
//       body: Column(
//         children: [
//           TextField(
//             controller: name,
//           ),
//
//           ElevatedButton(onPressed: (){
//             print(name.text);
//             setState(() {
//
//             });
//           },child: Text("submit")),
//            Text(name.text)
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class Controller3 extends StatefulWidget {
  const Controller3({super.key});

  @override
  State<Controller3> createState() => _TextFieldExampleState();
}

class _TextFieldExampleState extends State<Controller3> {
  final TextEditingController textController = TextEditingController();

  void printInputValue() {
    // Print the input value to the terminal
    print("Input value: ${textController.text}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextField Example"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: textController,
              decoration: InputDecoration(
                labelText: 'Enter Text',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: printInputValue,
              child: const Text("Print to Terminal"),
            ),
          ],
        ),
      ),
    );
  }
}

