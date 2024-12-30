import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class TextField4 extends StatelessWidget {
  const TextField4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextField"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Name", // Floating label
                hintText: "Enter your name", // Hint text
                border: const OutlineInputBorder(), // Outline border
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "Enter your email",
                border: const UnderlineInputBorder(), // Underline border
              ),
            ),
          ],
        ),
      ),
    );
  }
}
