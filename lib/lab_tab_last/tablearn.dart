import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DemoTab extends StatelessWidget {
  const DemoTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tab Example"),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MyTabApp extends StatelessWidget {
  const MyTabApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Simple Tabs Example"),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Home"),
              Tab(icon: Icon(Icons.person), text: "Profile"),
              Tab(icon: Icon(Icons.settings), text: "Settings"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text("Home Screen")),
            Center(child: Text("Profile Screen")),
            Center(child: Text("Settings Screen")),
          ],
        ),
      ),
    );
  }
}
