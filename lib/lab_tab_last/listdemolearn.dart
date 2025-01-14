// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class DemoTab extends StatelessWidget {
//   DemoTab({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//     );
//   }
// }

import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  ListViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Example'),
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Item 1'),
            subtitle: Text('Subtitle 1'),
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Item 2'),
            subtitle: Text('Subtitle 2'),
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Item 3'),
            subtitle: Text('Subtitle 3'),
          ),
        ],
      ),
    );
  }
}
