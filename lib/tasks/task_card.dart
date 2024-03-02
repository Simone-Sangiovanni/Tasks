import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasks/tasks/task.dart';
import '../providers/task_list_model.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({super.key, required this.task});
  final Task task;

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskListModel>(
      builder: (context, value, child) => Card(
        color: task.completed == false ? const Color(0xfff87e14) : const Color(0x5ff87e14),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: task.completed == false ? Colors.deepPurple.shade800 : Colors.grey.shade600,
            child: Icon(
              task.completed == false ? Icons.circle : Icons.done,
              color: const Color(0xffe0e0e0),
              size: task.completed == false ? 15 : 30,
            ),
          ),
          title: Text(
            task.content,
            style: const TextStyle(color: Color(0xff000000)),
          ),
          onTap: () {
            if (task.completed == false) {
              value.markCompleted(task.id);
            } else {
              value.markNotCompleted(task.id);
            }
          },
          //onLongPress: () => _remove(),
        ),
      ),
    );
  }
}