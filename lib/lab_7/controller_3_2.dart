import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Layout extends StatelessWidget {

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
          },child: Text("submit")),
        ],
      ),
    );
  }
}
