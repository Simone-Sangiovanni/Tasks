import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasks/providers/task_list_model.dart';

import 'my_home_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TaskListModel(),
      child: const MyApp(),
    ),
  ); //entry point
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tasks',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Tasks'),
    );
  }
}