import 'dart:convert';
import 'package:w13app/todo.dart';
import 'package:http/http.dart' as http;

class TodoServiceManager {
  var baseUrl = "https://jsonplaceholder.typicode.com/todos";

  Future<List<Todo>> getTodos() async {
    var reponse = await http.get(Uri.parse(baseUrl));

    if (reponse.statusCode == 200) {
      List<dynamic> todoJson = json.decode(reponse.body);

      List<Todo> todos = todoJson.map((map) => Todo.fromJson(map)).toList();

      return todos;
    } else {
      throw Exception(reponse.statusCode);
    }
  }

  Future<Todo> addTodo(Todo todo) async {
    var response = await http.post(
      Uri.parse(baseUrl),
      headers: {"content-type": "application/json;charset=UTF-8"},
      body: jsonEncode(todo.toJson()),
    );

    if (response.statusCode == 201) {
      return Todo.fromJson(jsonDecode(response.body));
    } else {
      throw Exception(response.statusCode);
    }
  }

  Future<Todo> updateTodo(Todo todo) async {
    var response = await http.put(
      Uri.parse(baseUrl + "/" + todo.id.toString()),
      headers: {"content-type": "application/json;charset=UTF-8"},
      body: jsonEncode(todo.toJson()),
    );

    if (response.statusCode == 200) {
      return Todo.fromJson(jsonDecode(response.body));
    } else {
      throw Exception(response.statusCode);
    }
  }

  Future<void> deleteTodo(Todo todo) async {
    var response =
        await http.delete(Uri.parse(baseUrl + "/" + todo.id.toString()));

    if (response.statusCode != 200) {
      throw Exception(response.statusCode);
    }
  }
}
