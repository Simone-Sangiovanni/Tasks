import 'package:flutter/cupertino.dart';

import '../tasks/task.dart';

class TaskListModel extends ChangeNotifier {
  final List<Task> _tasks = <Task>[];
  List<Task> get tasks => _tasks;

  void addTask(String title, String content) {
    _tasks.add(Task(title: title, content: content));
    notifyListeners();
  }
}