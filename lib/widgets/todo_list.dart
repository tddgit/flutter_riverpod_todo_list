import 'package:flutter/material.dart';

import 'package:flutter_riverpod_todo_list/provider/todos.dart';

import 'package:flutter_riverpod_todo_list/widgets/todo.dart';
import 'package:provider/provider.dart';

class TodoListWidget extends StatelessWidget {
  const TodoListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TodosProvider provider = Provider.of<TodosProvider>(context);
    final todos = provider.todos;

    return ListView.separated(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.all(16),
      itemBuilder: (context, index) {
        final todo = todos[index];

        return TodoWidget(todo: todo);
      },
      separatorBuilder: (context, index) => Container(
        height: 8,
      ),
      itemCount: todos.length,
    );
  }
}
