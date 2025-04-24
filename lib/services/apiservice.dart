import 'dart:convert';
import 'package:http/http.dart' as http;
import 'models.dart';

Future<List<Tree>> fetchTrees() async {
  final response = await http.get(Uri.parse('http://10.0.2.2:8000/todo/list'));

  if (response.statusCode == 200) {
    List jsonList = jsonDecode(response.body);
    return jsonList.map((e) => Tree.fromJson(e)).toList();
  } else {
    throw Exception('Failed to load trees');
  }
}

Future<void> addTodo(Tree todo) async {
  final url = Uri.parse('http://10.0.2.2:8000/todo/list/');

  final response = await http.post(
    url,
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode({
      'title': todo.title,
      'description': todo.description,
      'completed': todo.completed,
    }),
  );

  if (response.statusCode != 201) {
    throw Exception('Failed to add todo');
  }
}
