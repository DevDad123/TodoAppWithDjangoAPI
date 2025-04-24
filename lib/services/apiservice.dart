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

