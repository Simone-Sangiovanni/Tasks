import 'package:flutter/material.dart';

class MyTextButtonTheme {
  MyTextButtonTheme._();
  static TextButtonThemeData lightTextButtonTheme = const TextButtonThemeData(
      style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Color(0xff311b92)),
          foregroundColor: MaterialStatePropertyAll(Colors.white),
          shape: MaterialStatePropertyAll(
            ContinuousRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
          )
      )
  );

  static TextButtonThemeData darkTextButtonTheme = const TextButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(Colors.deepPurpleAccent),
      foregroundColor: MaterialStatePropertyAll(Colors.white),
      shape: MaterialStatePropertyAll(
        ContinuousRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
      )
    )
  );
}