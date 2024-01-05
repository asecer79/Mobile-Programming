import 'dart:convert';

import 'package:w14app/todo.dart';
import 'package:http/http.dart' as http;

class ServiceManager {
  //api address/ web service address
  String baseAddress = "https://jsonplaceholder.typicode.com";
  String action = "todos";

  //READ/GET
  Future<List<Todo>> getTodos() async {
    var fullAddress = "${baseAddress}/${action}";
    var response = await http.get(Uri.parse(fullAddress));
    if (response.statusCode == 200) {
      List<dynamic> jsonArray = json.decode(response.body);

      return jsonArray.map((json) {
        return Todo.fromJson(json);
      }).toList();
    } else {
      throw Exception(response.statusCode);
    }
  }

  //CREATE/POST

  Future<Todo> addTodo(Todo todo) async {
    var fullAddress = "${baseAddress}/${action}";
    var response = await http.post(
      Uri.parse(fullAddress),
      body: json.encode(todo.toJson()),
      headers: {'Content-Type': 'application/json; charset=UTF-8'},
    );

    if (response.statusCode == 201) {
      return Todo.fromJson(json.decode(response.body));
    } else {
      throw Exception(response.statusCode);
    }
  }

  //UPDATE/PUT
  Future<Todo> updateTodo(Todo todo) async {
    var fullAddress = "${baseAddress}/${action}/${todo.id}";
    var response = await http.put(
      Uri.parse(fullAddress),
      body: json.encode(todo.toJson()),
      headers: {'Content-Type': 'application/json; charset=UTF-8'},
    );

    if (response.statusCode == 200) {
      return Todo.fromJson(json.decode(response.body));
    } else {
      throw Exception(response.statusCode);
    }
  }

  //DELETE/DELETE
  Future<void> deleteTodo(int id) async {
    var fullAddress = "${baseAddress}/${action}/${id}";

    var response = await http.delete(Uri.parse(fullAddress));

    if (response.statusCode != 200) {
      throw Exception(response.statusCode);
    }
  }
}
