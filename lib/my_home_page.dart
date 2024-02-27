import 'package:flutter/material.dart';
import 'package:tasks/navbars/bottom_bar.dart';
import 'package:tasks/navbars/top_bar.dart';
import 'package:tasks/task_list.dart';

// starting point from which each widget is added
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TopBar(),
      body: TaskList(),
      bottomNavigationBar: BottomBar(),
    );
  }
}