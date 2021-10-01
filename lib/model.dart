class TodoField {
  static const createdTime = 'createdTime';
}

class Todo {
  Todo({
    required this.createdTime,
    required this.description,
    required this.id,
    required this.title,
    required this.isDone,
  });

  DateTime createdTime;
  String description;
  String id;
  bool isDone;
  String title;
}
