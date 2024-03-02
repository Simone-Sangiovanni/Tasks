import 'package:flutter/cupertino.dart';
import '../tasks/task.dart';

class TaskListModel extends ChangeNotifier {
  final List<Task> tasks = <Task>[];
  final List<Task> _tasksNotCompleted = <Task>[];
  final List<Task> _completedTasks = <Task>[];

  void _mergeLists() {
    tasks.clear();
    tasks.addAll(_tasksNotCompleted);
    tasks.addAll(_completedTasks);
  }

  void addTask(String content) {
    _tasksNotCompleted.add(Task(content: content));

    _mergeLists();
    notifyListeners();
  }

  void markCompleted(int id) {
    int index = tasks.indexWhere((task) => task.id == id); //find index of task in tasks list
    tasks[index].completed = true; //mark the task as completed
    _completedTasks.add(tasks[index]); //add task to completed list
    tasks.removeAt(index); //remove task from tasks list

    index = _tasksNotCompleted.indexWhere((task) => task.id == id); //find index of task in task not completed list
    _tasksNotCompleted.removeAt(index); //remove the task from task not completed list

    _mergeLists();
    notifyListeners();
  }

  void markNotCompleted(int id) {
    int index = tasks.indexWhere((task) => task.id == id);
    tasks[index].completed = false;
    _tasksNotCompleted.add(tasks[index]);
    tasks.removeAt(index);

    index = _completedTasks.indexWhere((task) => task.id == id);
    _completedTasks.removeAt(index);

    _tasksNotCompleted.sort((a, b) => a.time.compareTo(b.time));

    _mergeLists();
    notifyListeners();
  }
}