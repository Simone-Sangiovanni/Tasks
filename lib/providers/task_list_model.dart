import 'package:flutter/cupertino.dart';

import '../tasks/task.dart';

class TaskListModel extends ChangeNotifier {
  final List<Task> tasks = <Task>[];

  void addTask(String title, String content) {
    tasks.add(Task(title: title, content: content));
    notifyListeners();
  }
}