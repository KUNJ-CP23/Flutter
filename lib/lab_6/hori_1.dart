import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Row(
          children: [
            Expanded(child: Container(color: Colors.red)),   // First part: Red
            Expanded(child: Container(color: Colors.green)), // Second part: Green
            Expanded(child: Container(color: Colors.blue)),  // Third part: Blue
          ],
        ),
      ),
    );
  }
}
