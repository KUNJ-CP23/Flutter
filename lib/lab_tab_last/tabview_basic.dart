import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tab_view extends StatelessWidget {
  const Tab_view({super.key});

  // const before text, tabbar and tabbarview is used because of Immutable Widgets, Compile-Time Evaluation

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
                "Simple Tab Example for Basic learning",
                style: TextStyle(fontSize: 16)),
            bottom: const TabBar(tabs: [
              Tab(icon: Icon(Icons.home),text: "Home"),
              Tab(icon: Icon(Icons.person),text: "Profile"),
              Tab(icon: Icon(Icons.settings),text: "Settings"),
            ]),
          ),
          body: TabBarView(children: [
            const Center(
                child: Text("Page 1:\nThis is Home Page",
                    textAlign: TextAlign.center)),
            const Center(
                child: Text("Page 2:\nThis is Profile Page",
                    textAlign: TextAlign.center)),
            const Center(
                child: Text("Page 3:\nThis is Settings Page",
                    textAlign: TextAlign.center)),
          ]),
        ));
  }
}
