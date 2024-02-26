import 'package:flutter/material.dart';
import 'package:tasks/themes/text_themes.dart';

class AppThemes {
  //private constructor
  AppThemes._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.deepPurple.shade900,
    scaffoldBackgroundColor: Colors.grey.shade300,
    textTheme: TextThemes.lightTextTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: Colors.deepPurple.shade900,
    scaffoldBackgroundColor: Colors.grey.shade900,
    textTheme: TextThemes.darkTextTheme,
  );
}