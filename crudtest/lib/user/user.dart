import 'package:crudtest/utils/const_string.dart';

class User{
  List<Map<String, dynamic>> userList = [] ;

  void addUser({required name, required age, required email}){
    Map<String, dynamic> map = {};
  map[NAME] = name;
  map[AGE] = age;
  map[EMAIL] = email;
  userList.add(map);
}
  List<Map<String, dynamic>> displaylist(){
    return userList;
 }

  void updateUser({required String name, required int age, required String email, required int id}){
    Map<String, dynamic> map = {};
    map[NAME] = name;
    map[AGE] = age;
    map[EMAIL] = email;
    userList[id] =  map;
  }
  void deleteUser({required int index}){
        userList.removeAt(index);
  }
}