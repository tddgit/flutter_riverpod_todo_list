import 'package:flutter/material.dart';
import 'package:flutter_riverpod_todo_list/widgets/todo_form.dart';

class AddToDoDialogWidget extends StatefulWidget {
  const AddToDoDialogWidget({Key? key}) : super(key: key);

  @override
  _AddToDoDialogWidgetState createState() => _AddToDoDialogWidgetState();
}

class _AddToDoDialogWidgetState extends State<AddToDoDialogWidget> {
  final _formKey = GlobalKey<FormState>();
  String title = '';
  String description = '';
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Add Todo',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            const SizedBox(height: 8),
            TodoFormWidget(
              onChangedTitle: (title) => setState(
                () => this.title = title,
              ),
              onChangedDescription: (description) =>
                  setState(() => this.description = description),
              onSavedTodo: () {},
              title: title,
              description: description,
              key: _formKey,
            ),
          ],
        ),
      ),
    );
  }
}
