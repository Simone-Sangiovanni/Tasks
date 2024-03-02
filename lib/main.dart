import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:tasks/providers/task_list_model.dart';
import 'package:tasks/my_home_page.dart';
import 'package:tasks/themes/app_themes.dart';

// TODO: add real app logo instead of the flutter logo that appear on the screen

void main() {
  runApp(
  // create a notifier for widget updates, the model contain the elements that change and the methods to make the changes
  MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => TaskListModel(),
        ),
      ],
      child: const MyApp(),
    )
  ); //entry point
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // set the allowed screen orientations
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    // entry for the app
    return MaterialApp(
      //TODO: complete the theme of the app
      // set the theme of the app based on the system theme
      themeMode: ThemeMode.system,
      //configure the light theme
      theme: AppThemes.lightTheme,
      //configure the dark theme
      darkTheme: AppThemes.darkTheme,
      title: "Tasks",
      home: const MyHomePage(),
    );
  }
}