import 'package:flutter/material.dart';

class TodoFormWidget extends StatelessWidget {
  const TodoFormWidget({
    Key? key,
    required this.title,
    required this.description,
    required this.onChangedTitle,
    required this.onChangedDescription,
    required this.onSavedTodo,
  }) : super(key: key);

  final String description;
  final ValueChanged<String> onChangedDescription;
  final ValueChanged<String> onChangedTitle;
  final VoidCallback onSavedTodo;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          _buildTitle(),
          const SizedBox(
            height: 8,
          ),
          _buildDescription(),
          const SizedBox(
            height: 8,
          ),
          _buildButton(),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return TextFormField(
      maxLines: 2,
      decoration: InputDecoration(
        border: UnderlineInputBorder(),
        labelText: 'Title',
      ),
      initialValue: title,
      onChanged: onChangedTitle,
      validator: (title) {
        if (title!.isEmpty) {
          return 'The title cannot be empty';
        }

        return null;
      },
    );
  }

  Widget _buildDescription() {
    return TextFormField(
      maxLines: 4,
      decoration: InputDecoration(
        border: UnderlineInputBorder(),
        labelText: 'Description',
      ),
      initialValue: description,
      onChanged: onChangedDescription,
      validator: (description) {
        if (description!.isEmpty) {
          
          return 'The description cannot be empty';
        }

        return null;
      },
    );
  }

  Widget _buildButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onSavedTodo,
        child: Text(
          'Save',
        ),
      ),
    );
  }
}
