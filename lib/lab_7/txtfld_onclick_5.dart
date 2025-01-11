import 'package:flutter/material.dart';

class TextField5 extends StatefulWidget {
  const TextField5({super.key});

  @override
  State<TextField5> createState() => _TextFieldToTextExampleState();
}

class _TextFieldToTextExampleState extends State<TextField5> {
  // Controller to get TextField value
  final TextEditingController _controller = TextEditingController();
  String displayText = ""; // Variable to display text

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextField Onclick"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TextField
            TextField(
              controller: _controller, // Controller for TextField
              decoration: const InputDecoration(
                labelText: "Enter Text",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

            // Button to display text
            ElevatedButton(
              onPressed: () {
                setState(() {
                  displayText = _controller.text; // Update displayText
                });
              },
              child: const Text("Display Text"),
            ),
            const SizedBox(height: 20),

            // Text widget to display input
            Text(
              displayText, // Display updated text
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
