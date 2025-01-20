import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CrudDemoK extends StatefulWidget {
  CrudDemoK({super.key});

  @override
  State<CrudDemoK> createState() => _CrudDemoKState();
}

class _CrudDemoKState extends State<CrudDemoK> {
  TextEditingController nameController = TextEditingController();
  List<String> names = ["demo", "demo2"];

  void addItem(String name){
    setState(() {
      nameController.add(name);
    });

  }
  void editItem(){

  }
  void deleteItem(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text("Crud Demo K"),
      ),
      body: Row(
        children: [
          TextFormField(
            controller: nameController,
            decoration: InputDecoration(
              labelText: "Enter name"
            ),
          ),
          ElevatedButton(onPressed: (){
            return addItem(nameController.text),
          },
              child: Expanded(
                  child: ListView.builder(
                      itemCount: names.length,
                    itemBuilder: (context,index),
                  ))
        ],
      )
    );
  }


}
