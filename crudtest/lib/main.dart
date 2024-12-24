import 'dart:io';

import 'package:crudtest/user/user.dart';
import 'package:crudtest/utils/const_string.dart';

void main(){
  User user = User();

  int choice;
    do{
      print("Crud operation: "
          "\n1. Insert User"
          "\n2. Display List"
          "\n3. Update user"
          "\n4. Delete User"
          "\n5. Exit Crud\n");

      stdout.write("Enter your choice");
      choice = int.parse(stdin.readLineSync()!);
      
      switch(choice){
        case 1:
          //region INSERT USER 
          stdout.write("Enter name: ");
          String name = stdin.readLineSync()!;
          stdout.write("Enter age: ");
          int age = int.parse(stdin.readLineSync()!);
          stdout.write("Enter email: ");
          String email = stdin.readLineSync()!;
          user.addUser(name:name ,age:age, email:email);
          stdout.write("User entered successfully");
          //end region INSERT
          break;
        case 2:
        //region DISPLAY
          List<Map<String, dynamic>> userList = user.displaylist();
          for (var element in userList) {
            print(
                '${element[NAME]} . ${element[AGE]} . ${element[EMAIL]}');
          }
          //end region DISPLAY
          break;

        case 3:
        //region UPDATE
          stdout.write("Enter name: ");
          String name = stdin.readLineSync()!;
          stdout.write("Enter age: ");
          int age = int.parse(stdin.readLineSync()!);
          stdout.write("Enter email: ");
          String email = stdin.readLineSync()!;
          stdout.write("Enter Primary key: ");
          int index = int.parse(stdin.readLineSync()!);
          user.updateUser(name:name ,age:age, email:email, id: index);
          //end region UPDATE
          break;
        case 4:
        //region DELETE
          stdout.write("Enter Primary key to delete");
          int index = int.parse(stdin.readLineSync()!);
          user.deleteUser(index:index);
        //region DELETE
          break;
        case 5:
        stdout.write('Thank You Visit Again');
          break;
        default:
          stdout.write("Enter valid choice");
      }
    }while(choice != 5);
}