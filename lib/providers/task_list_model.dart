import 'package:flutter/cupertino.dart';

import '../tasks/task.dart';

class TaskListModel extends ChangeNotifier {
  final List<Task> tasks = <Task>[];

  void addTask(String content) {
    tasks.add(Task(content: content));
    notifyListeners();
  }
}