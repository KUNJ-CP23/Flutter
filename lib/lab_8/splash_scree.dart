import 'package:flutter/material.dart';
//timer duration mate
import 'dart:async';
import 'package:labprogram/lab_8/splash.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  //aa e che j overwrite thavani che
  void initState() {
    //init atle initial state
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => const Splash()
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/dice1.png'),
      ),
    );
  }
}








