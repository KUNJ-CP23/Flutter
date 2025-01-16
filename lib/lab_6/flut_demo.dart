import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LayoutBasicDemo extends StatelessWidget {
  const LayoutBasicDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
            'Kunjjjj'
        ),
      ),
      body: Text(
          'Holaa!'
      ),
    );
  }
}
