import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "https://66f0d571f2a8bce81be6bcbd.mockapi.io/Todo";

  Future<List<dynamic>> getAllToDo() async {
    var res = await http.get(Uri.parse(baseUrl));
    if (res.statusCode == 200) {
      List<dynamic> data = jsonDecode(res.body);

      return data.map((todo) {
        return {
          "id": todo["id"] ?? "",
          "name": todo["name"] ?? "No Name",
          "email": todo["email"] ?? "No Email"
        };
      }).toList();
    }
    return [];
  }


  Future<bool> addTodo(String name, String email) async {
    var res = await http.post(
      Uri.parse(baseUrl),
      headers: {'Content-Type': 'application/json'},
      body: json.encode({"name": name, "email": email}),
    );
    return res.statusCode == 201;
  }

  Future<bool> editTodo(String id, String name, String email) async {
    var res = await http.put(
      Uri.parse('$baseUrl/$id'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode({"name": name, "email": email}),
    );
    return res.statusCode == 200;
  }

  Future<bool> deleteTodo(String id) async {
    var res = await http.delete(Uri.parse('$baseUrl/$id'));
    return res.statusCode == 200;
  }
}
