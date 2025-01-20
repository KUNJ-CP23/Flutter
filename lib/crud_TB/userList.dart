import 'package:flutter/material.dart';
import 'package:labprogram/crud_TB/addUser.dart';
import 'package:labprogram/lecture_prog/string_const.dart';

class UserList extends StatefulWidget {
  UserList({super.key});

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  List<Map<String,dynamic>> users = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          title: Text("Crud Demo"),
          actions: [
            IconButton(onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context)=>AddUser(
                        name: null,
                        email: null,
                        age: null,
                      ))
              ).then((value){
                setState(() {
                  if(value != null){
                    users.add(value);
                  }
                });
              });

            }, icon: Icon(Icons.add_box))
          ],
        ),
        body: users.length > 0 ? (
            Container(
              child: ListView.builder(itemBuilder: (context,index){
                return InkWell(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context)=>AddUser(
                                  name: users[index][NAME],
                                  email: users[index][EMAIL],
                                  age: users[index][AGE]
                              )
                          )).then((value){
                        if(value != null){
                          setState(() {
                            users[index] = value;
                          });
                        }
                      });
                    },
                    child: Card(
                      color: Colors.grey.shade200,
                      child: ListTile(
                        leading: Icon(Icons.person),
                        title: Text(users[index][NAME]),
                        subtitle: Text(users[index][EMAIL]),
                        trailing: Text(users[index][AGE]),
                      ),
                    )
                );
              },
                itemCount: users.length,
              ),
            )
        ) : Center(
          child: (
              Text("User data is not available")
          ),
        )
    );
  }
}