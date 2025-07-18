import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,

  scaffoldBackgroundColor: Color(0xFF000000),

  textTheme: TextTheme(
    bodyMedium: TextStyle(
      color: Color(0xFFFFFFFF),
      fontFamily: "Montserrat",
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
    ),
  ),

  appBarTheme: AppBarTheme(
    backgroundColor: Color(0xFF000000),
  ),
);