import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService{
  String baseUrl = "";

  Future<List<dynamic>> getAllToDo() async{
    var res = await http.get(Uri.parse(baseUrl));

    List<dynamic> data = await jsonDecode(res.body);
    return data;
  }

  Future<void> addTodo(String title, String des) async {
    Map<String, dynamic> mp = {
      "title" : title,
      "des" : des
    };

    // var res = await http.post(url)
  }

}