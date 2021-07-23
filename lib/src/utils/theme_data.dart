import 'package:flutter/material.dart';

final ThemeData theme = ThemeData(
  appBarTheme: AppBarTheme(brightness: Brightness.dark),
  primaryColor: Color(0xff091955),
  accentColor: Color(0xffeb06ff),
  scaffoldBackgroundColor: Color(0xff3450a1),
  splashColor: Colors.white,
  buttonColor: Colors.black,
  fontFamily: "Nuntino Sans",
  scrollbarTheme: ScrollbarThemeData(
    thumbColor: MaterialStateProperty.all(Colors.grey),
  ),
  textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.grey),
);
