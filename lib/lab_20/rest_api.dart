import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService{
  String baseUrl = "https://66f0d571f2a8bce81be6bcbd.mockapi.io/Todo";

  Future<List<dynamic>> getAllToDo() async{

    var res = await http.get(Uri.parse(baseUrl));

    List<dynamic> data = await jsonDecode(res.body);
    print('TODO LIST IS :::::::::::: $data');
    return data;
  }

  //add method --> post
  Future<void> addTodo(String title, String desc) async {
    Map<String, dynamic> maptodo = {
      "title" : title,
      "desc" : desc
    };

    var res = await http.post(
        Uri.parse(baseUrl),
        headers: {'Content-Type': 'application/json'},
        body: json.encode(maptodo)
    );
  }

  //edit method --> put
  Future<void> editTodo(String id, String title, String desc) async{
    Map<String, dynamic> updatedTodo = {
      "title": title,
      "desc": desc,
    };
    var res = await http.put(
      Uri.parse('$baseUrl/$id'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(updatedTodo),
    );
  }

  //delete method -->  delete
  Future<void> deleteTodo (String id) async{
    await http.delete(Uri.parse('$baseUrl/$id'));
  }
}

