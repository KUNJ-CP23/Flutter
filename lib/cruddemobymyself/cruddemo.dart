import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CrudDemoK extends StatefulWidget {
  CrudDemoK({super.key});

  @override
  State<CrudDemoK> createState() => _CrudDemoKState();
}

class _CrudDemoKState extends State<CrudDemoK> {
  TextEditingController nameController = TextEditingController();
  List<String> names = ["demo", "demo2"];

  //add method
  void addItem(String name){
    setState(() {
      if(name.isNotEmpty){
        names.add(name);
        //after adding it must cleared
        nameController.clear();
      }
    });
  }

  //edit method
  void editItem(int index){
      nameController.text = names[index];
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Edit Item"),
          content: TextField(
            controller: nameController,
            decoration: InputDecoration(labelText: "Enter new name"),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  names[index] = nameController.text;
                  nameController.clear();
                });
                Navigator.pop(context);
              },
              child: Text("Update"),
            ),
          ],
        ),
      );

  }

  //delete method
  void deleteItem(int index){

    // setState(() {
    //   names.removeAt(index);
    // });

    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Confirm Delete"),
          content: Text("Are you sure you want to delete this item?"),
          actions: [
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  names.removeAt(index);
                });
                Navigator.pop(context);
              },
              child: Text("Delete"),
            ),
          ],
        )
    );
  }

  //search method
  // void searchItem(int index){
  //
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent.shade100,
        title: const Text("Crud using ListView Builder"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: "Enter Text"
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
                onPressed: () => addItem(nameController.text),
                child: const Text("Add"),
            ),
            SizedBox(height: 5),
            Expanded(
                child: ListView.builder(
                    itemCount: names.length,
                    itemBuilder: (context, index){
                      return ListTile(
                        title: Text(names[index]),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                                icon: Icon(Icons.edit, color: Colors.blueAccent,),
                                onPressed: () => editItem(index)
                            ),
                            IconButton(
                                icon: Icon(Icons.delete, color: Colors.red,),
                                onPressed: () => deleteItem(index)
                            )
                          ],
                        ),
                      );
                    }
                )
            )
          ],
        ),
      ),
    );
  }
}
