import 'package:flutter/material.dart';

import 'package:flutter_riverpod_todo_list/model.dart';
import 'package:flutter_riverpod_todo_list/widgets/todo.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoListWidget extends StatelessWidget {
  const TodoListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TodoWidget(
      todo: Todo(
        id: '1', // TODO:id
        createdTime: DateTime.now(),
        title: 'Walk the dog 🦮',
      ),
    );
  }
}
