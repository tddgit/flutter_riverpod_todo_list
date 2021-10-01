import 'package:flutter/material.dart';
import 'package:flutter_riverpod_todo_list/pages/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static final String title = 'Todo App';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return ChangeNotifier();
      },
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: const HomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
