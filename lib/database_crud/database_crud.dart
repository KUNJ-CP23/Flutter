import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseCrud extends StatefulWidget {

  const DatabaseCrud({super.key});

  @override
  State<DatabaseCrud> createState() => _DatabaseState();
}

class _DatabaseState extends State<DatabaseCrud> {
  //making object of class DATABASE
  late Database _database;
  TextEditingController title=TextEditingController();
  //description variable desc
  TextEditingController desc=TextEditingController();
//pachi initialize thay che, database no obj ane
  //making main list of user
  List<Map<String,dynamic>> data=[];


  //making database if it exits then do change into this otherwise create new databasec
  Future<void> initDatabase() async{
    _database = await openDatabase(
      join(await getDatabasesPath(),'myDatabse.db'),

      onCreate: (db,version){
        return db.execute(
            'create table myTable(id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT,desc TEXT)'
        );
      },
      version: 1,
    );
  }

  Future<void> _fetchData() async {
    List<Map<String,dynamic>> userdata=await _database.query('myTable');
    setState(() {
      data=userdata;
    });
    print(data);
  }

  //adding data
  Future<void> _addData(String title, String desc) async {
    await _database.insert('myTable', {'title':title, 'desc':desc});
    print('data is added');
    _fetchData();
  }

  @override
  void initState(){
    super.initState();
    initDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Placeholder(

    );
  }
}
