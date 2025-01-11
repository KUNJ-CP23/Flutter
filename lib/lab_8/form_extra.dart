import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FormExtra extends StatelessWidget {
   FormExtra({super.key});

  TextEditingController namecontroller = TextEditingController();
  // GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
          'Form',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Form(
          child: Padding(
            // key: _formkey,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                TextFormField(
                  validator: (value){
                    if (value!.isEmpty) {
                      return 'Enter Valid Name';
                    }
                    return null;
                },
                  controller: namecontroller,
                  decoration: InputDecoration(
                    hintText: "Enter naam",
                    labelText: "Enter name",
                    labelStyle: TextStyle(color: Colors.black),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Icon(
                        Icons.close,
                        size: 16,
                      ),
                    ),
                    fillColor: Colors.pinkAccent
                  ),
                )
              ],
            ),
          )),
    );
  }
}
