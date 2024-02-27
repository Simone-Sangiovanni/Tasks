import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasks/providers/task_list_model.dart';
import 'package:tasks/tasks/task_card.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList>{
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskListModel>(
      builder: (context, value, child) => ListView.builder(
        padding: const EdgeInsets.all(0.0),
        scrollDirection: Axis.vertical,
        itemCount: value.tasks.length,
        itemBuilder: (BuildContext context, int index) {
          return TaskCard(task: value.tasks[index]);
        },
      )
    );
  }
}