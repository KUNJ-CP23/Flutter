import 'package:flutter/material.dart';
import 'package:lab_programs/lab_8/splash_scree.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: const Center(child: Text('Main screen!')),
    );
  }
}
