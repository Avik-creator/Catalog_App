// ignore_for_file: prefer_const_constructors, duplicate_ignore, use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lighttheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.yellow,
      cardColor: Colors.white,
      canvasColor: creamcolor,
      buttonColor: darkbluishColor,
      accentColor: darkbluishColor,
      // ignore: prefer_const_constructors
      appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.black,
          )));
  static ThemeData darktheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.yellow,
      cardColor: Vx.black,
      canvasColor: darkcreamcolor,
      buttonColor: lightbluishColor,
      accentColor: Colors.white,
      // ignore: prefer_const_constructors
      appBarTheme: AppBarTheme(
          color: Colors.black,
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.white,
          )));

  static Color creamcolor = Color(0xfff5f5f5);
  static Color darkcreamcolor = Color(0xff0b0b0);
  static Color darkbluishColor = Color(0xfff403b59);
  static Color lightbluishColor = Vx.blue700;
}
