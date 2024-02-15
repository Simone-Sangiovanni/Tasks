import 'package:flutter/material.dart';
import 'package:tasks/bottom_app_bar/bottom_bar.dart';
import 'package:tasks/task_list.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade800,
        title: Text(title, style: const TextStyle(color: Colors.white)),
      ),
      body: const TaskList(),
      bottomNavigationBar: const BottomBar(),
    );
  }
}