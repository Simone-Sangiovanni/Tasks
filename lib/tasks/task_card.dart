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

  Color _getColor() {
    if(widget.task.completed == false) {
      return Colors.white70;
    } else {
      return Colors.grey.shade800;
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
      color: _getColor(),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: _circleAvatarColor,
        ),
        title: Text(
          widget.task.title,
          style: _getTextStyle(),
        ),
        subtitle: Text(
          widget.task.content
        ),
        trailing: Switch(
          // This bool value toggles the switch.
          value: light,
          activeColor: Colors.red,
          onChanged: (bool value) {
            // This is called when the user toggles the switch.
            setState(() {
              light = value;
            });
          },
        ),
        onLongPress: () => _completed(),
      ),
    );
  }
}