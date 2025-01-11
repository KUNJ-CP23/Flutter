import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UserEntryFormPage extends StatefulWidget {
  const UserEntryFormPage({super.key});

  @override
  State<UserEntryFormPage> createState() => _LayoutState();
}

class _LayoutState extends State<UserEntryFormPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

//aa andar atle nakhi bcoz khali refresh kare aakhu page reload na kare, global baar hase to aakhu page reload karse
  GlobalKey<FormState> _fromKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Center(
          child: Text(
            'Basic Form',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Form(
        key: _fromKey, //input leva mate
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter Valid Name';
                  }
                  if (!RegExp(
                      r'^[A-Z]{1}[a-z ]+$')
                      .hasMatch(value)) {
                    return 'Enter Valid Name';
                  }
                  return null;
                },
                controller: nameController,
                decoration: InputDecoration(
                  hintText: 'Enter your name',
                  labelText: 'Enter your name',
                  // labelStyle: TextStyle(color: Colors.black),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Icon(
                      Icons.close,
                      size: 16,
                    ),
                  ),
                  fillColor: Colors.red,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter Email Address';
                  }
                  if (!RegExp(
                      r'^[a-z 0-9].*@gmail.com$')
                      .hasMatch(value)) {
                    return 'Enter Valid Email address';
                  }
                  return null;
                },
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Enter your Email',
                  // prefixText: 'firstnamelastname@gmail.com',
                  // helperText: 'firstnamelastname@gmail.com',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
                // inputFormatters: [
                //   FilteringTextInputFormatter.deny(RegExp(r'[A-Z]'))
                // ],
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter Phone Number';
                  }
                  if(!RegExp(
                      r'[0-9]{10}')
                  .hasMatch(value)){
                    return 'Enter Valid Contact Number';
                  }
                  if (value.length != 10) {
                    return 'Enter Valid Phone Number';
                  }
                  return null;
                },
                controller: phoneController,
                decoration: InputDecoration(
                  hintText: 'Enter your Phone',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                keyboardType: TextInputType.phone,
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  print("Name: ${nameController.text}");
                  print("Email : ${emailController.text}");
                  print("Contact : ${phoneController.text}");
                  print('IS VALIDATE : ${_fromKey.currentState!.validate()}');
                },
                child: Text(
                  'Submit',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
