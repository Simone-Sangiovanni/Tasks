import 'package:flutter/cupertino.dart';

import '../task.dart';

class TaskListModel extends ChangeNotifier {
  final List<Task> _tasks = <Task>[];
  List<Task> get tasks => _tasks;

  void addTask(String content) {
    _tasks.add(Task(content: content));
    notifyListeners();
  }
}