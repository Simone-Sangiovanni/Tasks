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
  IconData _icon = Icons.circle;
  Color _cardColor = const Color(0xfff87e14);
  double _iconSize = 15;

  void _completed() {
    setState(() {
      widget.task.completed = !widget.task.completed;
      if(widget.task.completed == true) {
        _circleAvatarColor = Colors.grey.shade600;
        _icon = Icons.done;
        _cardColor = const Color(0x5ff87e14);
        _iconSize = 30;
      } else {
        _circleAvatarColor = Colors.deepPurple.shade800;
        _icon = Icons.circle;
        _cardColor = const Color(0xfff87e14);
        _iconSize = 15;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: _cardColor,
      child: ListTile(
        //TODO: modify
        leading: CircleAvatar(
          backgroundColor: _circleAvatarColor,
          child: Icon(
            _icon,
            color: const Color(0xffe0e0e0),
            size: _iconSize,
          ),
        ),
        title: Text(
          widget.task.content,
          style: const TextStyle(color: Color(0xff000000)),
        ),
        onTap: () => _completed(),
      ),
    );
  }
}