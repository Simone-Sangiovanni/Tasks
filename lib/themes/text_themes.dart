import 'package:flutter/material.dart';

class TextThemes {
  TextThemes._();

  static TextTheme lightTextTheme = TextTheme(
    displayLarge: const TextStyle().copyWith(
      fontSize: 38,
      fontWeight: FontWeight.bold,
      color: Colors.white
    ),
    displayMedium: const TextStyle().copyWith(
      fontSize: 30,
      color: Colors.white
    ),
    displaySmall: const TextStyle().copyWith(
      fontSize: 24,
      color: Colors.white
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    displayLarge: const TextStyle().copyWith(
      fontSize: 38,
      fontWeight: FontWeight.bold,
      color: Colors.white
    ),
    displayMedium: const TextStyle().copyWith(
      fontSize: 30,
      color: Colors.white
    ),
    displaySmall: const TextStyle().copyWith(
      fontSize: 24,
      color: Colors.white
    ),
  );
}