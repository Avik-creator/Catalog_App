// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lighttheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.yellow,
      // ignore: prefer_const_constructors
      appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.black,
          )));
  static ThemeData darktheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);
}
