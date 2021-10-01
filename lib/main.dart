import 'package:flutter/material.dart';

import 'package:flutter_riverpod_todo_list/pages/home.dart';
import 'package:flutter_riverpod_todo_list/provider/todos.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String title = 'Todo App';

  @override
  // ignore: flutter_style_todos
  Widget build(BuildContext context) {
    // TODO: Add function
    return ChangeNotifierProvider(
      create: (context) {
        return TodosProvider();
      },
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
          backgroundColor: Colors.grey.shade300,
        ),
        home: const HomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
