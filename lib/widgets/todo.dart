import 'package:flutter/material.dart';
import 'package:flutter_riverpod_todo_list/model.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoWidget extends StatelessWidget {
  const TodoWidget({
    Key? key,
    required this.todo,
  }) : super(key: key);

  final Todo todo;

  Widget _buildTodo(BuildContext context) {
    return Row(
      children: <Widget>[
        Checkbox(
          value: todo.isDone,
          activeColor: Theme.of(context).primaryColor,
          checkColor: Colors.white,
          onChanged: (_) {
            todo.isDone = !todo.isDone;
          },
        ),
        SizedBox(width: 20),
        Expanded(
          child: Column(
            children: [
              Text(
                todo.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                  fontSize: 22,
                ),
              ),
              SizedBox(height: 8),
              if (todo.description.isNotEmpty)
                Container(
                  margin: EdgeInsets.only(top: 4),
                  child: Text(todo.description),
                ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      key: Key(todo.id),
      actions: [
        IconSlideAction(
          color: Colors.green,
          onTap: () {},
          caption: 'Edit',
          icon: Icons.edit,
        ),
      ],
      child: _buildTodo(context),
    );
  }
}
