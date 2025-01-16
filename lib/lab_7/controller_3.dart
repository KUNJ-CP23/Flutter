import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Controller3 extends StatefulWidget {
  const Controller3({super.key});

  @override
  State<Controller3> createState() => _LayoutState();
}

class _LayoutState extends State<Controller3> {
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
