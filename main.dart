import 'package:flutter/material.dart';
import 'package:myfirstflutterproject/counter_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodoApp(),
    );
  }
}
