import 'package:flutter/material.dart';
import 'package:labprogram/lab_9/temp.dart';

class Bdaynavigation extends StatefulWidget {
  const Bdaynavigation({super.key});

  @override
  State<Bdaynavigation> createState() => _BdaynavigationState();
}

class _BdaynavigationState extends State<Bdaynavigation> {

  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter Valid Name';
                  }
                  if (!RegExp(r'^[A-Z]{1}[a-z ]+$').hasMatch(value)) {
                    return 'Enter Valid Name';
                  }
                  return null;
                },
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Enter Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder:(context) =>  Decoration1(name: nameController.text),));
            }, child: Text('Click me!'))
          ],
        ),
      ),
    );
  }
}
