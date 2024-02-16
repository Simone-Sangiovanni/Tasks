import 'package:flutter/material.dart';
import 'package:tasks/tasks/task.dart';

class TaskCard extends StatefulWidget {
  const TaskCard({super.key, required this.task});
  final Task task;

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard>{

  TextStyle? _getTextStyle(bool checked) {
    if (checked == false) {
      return null;
    } else {
      return const TextStyle(
        color: Colors.black54,
        decoration: TextDecoration.lineThrough,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white70,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.deepPurple[800],
          child: Text(
            widget.task.title[0],
            style: _getTextStyle(widget.task.completed), /*const TextStyle(color: Colors.white70)*/
          ),
        ),
        title: Text(
          widget.task.title,
          style: _getTextStyle(widget.task.completed),
        ),
        subtitle: Text(widget.task.content),
        onTap: () => setState(() {
          widget.task.completed = !widget.task.completed;
        })
      ),
    );
  }
}