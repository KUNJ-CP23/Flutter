import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  TextEditingController name = TextEditingController();
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: name,
          ),

          ElevatedButton(onPressed: (){
            print(name.text);
            setState(() {

            });
          },child: Text("submit")),
           Text(name.text)
        ],
      ),
    );
  }
}
