import 'package:flutter/material.dart';

class Controller3_2 extends StatelessWidget {
  final TextEditingController textController = TextEditingController();

  Controller3_2({super.key});

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
                hintText: "Enter text",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.vertical(),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Print the input value to the terminal
                print("Input value: ${textController.text}");
              },
              child: const Text("Print"),
            ),
          ],
        ),
      ),
    );
  }
}

