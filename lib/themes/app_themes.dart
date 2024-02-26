import 'package:flutter/material.dart';

class AppThemes {
  //private constructor
  AppThemes._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: const Color(0xff311b92),
    scaffoldBackgroundColor: Colors.grey.shade300,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: const Color(0xaf311b92),
    scaffoldBackgroundColor: const Color(0xff303030),
  );
}