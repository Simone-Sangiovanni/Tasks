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
      builder: (context, value, child) => ListView(
        padding: const EdgeInsets.all(8.0),
        scrollDirection: Axis.vertical,
        children: [
          for(var task in value.tasks) TaskCard(task: task)
          /*for(var task in value.tasks) Container(
            margin: const EdgeInsets.only(bottom: 8.0),
            color: Colors.red,
            alignment: Alignment.center,
            width: 500,
            height: 100,
            child: Text(task.title),
          ),*/
        ],
      )
    );
  }
}