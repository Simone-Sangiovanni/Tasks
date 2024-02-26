import 'package:flutter/material.dart';
import 'package:tasks/bottom_app_bar/bottom_bar.dart';
import 'package:tasks/task_list.dart';

// starting point from which each widget is added
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: create a class that define the AppBar
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        // TODO: change the icon with the real app logo
        leading: const Icon(
          Icons.flutter_dash,
          size: 30,
          color: Colors.white,
        ),
        title: Text(
          "Tasks",
          //style: TextStyle(color: Colors.white),
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
      body: const TaskList(),
      bottomNavigationBar: const BottomBar(),
    );
  }
}