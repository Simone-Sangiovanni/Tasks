import 'package:flutter/material.dart';
import 'package:tasks/tasks/task.dart';

class TaskCard extends StatefulWidget {
  const TaskCard({super.key, required this.task});
  final Task task;

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard>{
  Color _circleAvatarColor = Colors.deepPurple.shade800;
  bool light = false;

  TextStyle? _getTextStyle() {
    if (widget.task.completed == false) {
      return null;
    } else {
      return const TextStyle(
        color: Colors.black45,
        decoration: TextDecoration.lineThrough,
      );
    }
  }

  void _completed() {
    setState(() {
      widget.task.completed = !widget.task.completed;
      if(_circleAvatarColor == Colors.deepPurple.shade800) {
        _circleAvatarColor = Colors.grey.shade600;
      } else {
        _circleAvatarColor = Colors.deepPurple.shade800;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).primaryColor,
      child: ListTile(
        //TODO: modify
        leading: CircleAvatar(
          backgroundColor: _circleAvatarColor,
        ),
        title: Text(
          widget.task.content,
          style: const TextStyle(color: Color(0xFFE0E0E0)),
          //style: Theme.of(context).textTheme.displaySmall,
        ),
        onLongPress: () => _completed(),
      ),
    );
  }
}