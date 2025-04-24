import 'package:flutter/material.dart';
import 'package:todoapp/screens/todolistscreen.dart';
import 'services/apiservice.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodoListScreen() ,
    );
  }
}


