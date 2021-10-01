class TodoField {
  static const createdTime = 'createdTime';
}

class Todo {
  Todo({
    required this.createdTime,
    this.description = '',
    required this.id,
    required this.title,
    this.isDone = false,
  });

  DateTime createdTime;
  String description;
  String id;
  bool isDone = false;
  String title;
}
