import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

//insert update delete datbase ni method che int return kare

class Database_todo {

  //db path, version, func accor to verson

  Future<Database> initDatabase() async {
    Database db = await openDatabase(
      join(await getDatabasesPath(),'To_Do.db'),
      onCreate: (db, version) {
        db.execute(
          '''CREATE TABLE To_Do
              (ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
              TITLE TEXT NOT NULL,
              DESC TEXT ,
              PRIO INTEGER
              );''',
        );
      },
      version: 1,
    );
    return db;
  }

  
  Future<void> addTask({String? title,required desc,required prio}) async {
    Database db=await initDatabase();
    await db.insert('To_Do', {'TITLE':title,'DESC':desc,'PRIO':prio});
  }

  Future<void> updateTask({int? id,String? title,required desc,required prio}) async {
    Database db=await initDatabase();
    await db.update('To_Do', {'TITLE':title,'DESC':desc,'PRIO':prio},where: 'ID = []',whereArgs: [id]);
  }

  Future<void> deleteTask({int? id}) async {
    Database db=await initDatabase();
    await db.delete('To_Do',where: 'ID = []',whereArgs: [id]);
  }


  Future<List<Map<String, dynamic>>> getTasks() async {
    Database db = await initDatabase();

    List<Map<String, dynamic>> tasks = await db.query('To_Do');
    return tasks;
  }
}






// import 'dart:io';
// import ''
//
// Future<Database> initDatabase() async {
//   Database db = await openDatabase(
//     //
//     '${await getDatabasesPath()}/Matrimony.db',
//     onCreate: (db, version) {
//       db.execute(
//         '''CREATE TABLE $TBL_NAME
//               ($USER_ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
//               $NAME TEXT NOT NULL,
//               $ADDRESS TEXT ,
//               $EMAIL TEXT,
//               $PHONE INTEGER,
//               $CITY TEXT,
//               $DATE TEXT,
//               $GENDER TEXT,
//               $HOBBY TEXT,
//               $PASSWORD TEXT,
//               $CONPASS TEXT,
//               $FAV INTEGER
//               );''',
//       );
//     },

    // onUpgrade: (db, oldVersion, newVersion) async {
    //   try {
    //     if (oldVersion < 7) {
    //       await db.execute("ALTER TABLE $TBL_NAME ADD COLUMN $DATE TEXT");
    //       await db.execute("ALTER TABLE $TBL_NAME ADD COLUMN $GENDER TEXT");
    //       await db.execute("ALTER TABLE $TBL_NAME ADD COLUMN $HOBBY TEXT");
    //       await db.execute("ALTER TABLE $TBL_NAME ADD COLUMN $PASSWORD TEXT");
    //       await db.execute("ALTER TABLE $TBL_NAME ADD COLUMN $CONPASS TEXT");
    //       await db.execute("ALTER TABLE $TBL_NAME ADD COLUMN $FAV INTEGER");
    //     }
    //   }
    //   catch (e) {
    //     print("Database Upgrade Error: $e");
    //   }

    // },
  //   version: DB_VERSION,
  // );
  // List<Map<String, dynamic>> result = await db.rawQuery('PRAGMA table_info($TBL_NAME)');
  // print(result);
//   return db;
// }