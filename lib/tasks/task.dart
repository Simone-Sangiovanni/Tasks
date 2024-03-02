import 'dart:math';

class Task {
  Task({required this.content});
  String content;
  bool completed = false;
  int id = 10000000 + Random().nextInt((99999999 + 1) - 10000000);
  DateTime time = DateTime.now();
  //TODO: completed tasks must be put at the end of the task list
}