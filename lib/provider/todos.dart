import 'package:flutter/material.dart';
import 'package:flutter_riverpod_todo_list/model.dart';

class TodosProvider extends ChangeNotifier {
  final List<Todo> _todos = [
    Todo(
      id: '1', // TODO:id
      createdTime: DateTime.now(),
      title: 'Walk the dog 🦮',
    ),
    Todo(
      id: '2', // TODO:id
      createdTime: DateTime.now(),
      title: 'Plan trip to Norway 🇳🇴',
      description: '''
      -Rent some hotels
      -Rent a car
      -Pack suitcase
      ''',
    ),
    Todo(
      id: '3', // TODO:id
      createdTime: DateTime.now(),
      title: 'Plan birthday 🎂',
    ),
    Todo(
      id: '4', // TODO:id
      createdTime: DateTime.now(),
      title: 'Buy some food',
      description: '''
      - Milk,
      - Bread,
      - Water
      ''',
    ),
  ];

  List<Todo> get todos => _todos.where((todo) => !todo.isDone).toList();

  void addTodo(Todo todo) => _todos.add(todo);
}
