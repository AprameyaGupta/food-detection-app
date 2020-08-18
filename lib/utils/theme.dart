import 'package:flutter/material.dart';

final TextStyle listTitleDefaultTextStyle = TextStyle(color: Colors.white70, fontSize: 20.0, fontWeight: FontWeight.w600);

final ThemeData kIOSTheme = ThemeData(
    primarySwatch: Colors.orange,
    primaryColor: Colors.grey[100],
    primaryColorBrightness: Brightness.light,);

final ThemeData kDefaultTheme = ThemeData(
  brightness: Brightness.light,
  backgroundColor: Colors.white,
  primaryColor: Colors.purple,
  accentColor: Colors.white,
  hintColor: Colors.red,
  bottomAppBarColor: Colors.red[200],
  buttonColor: Color.fromRGBO(143, 148, 251, 2),
  textTheme: TextTheme(
    title: TextStyle(color: Colors.white70, fontSize: 20.0, fontWeight: FontWeight.w600),
    subhead: TextStyle(color: Colors.black),
    button: TextStyle(color: Colors.black)),
  primaryTextTheme: TextTheme(
    title: TextStyle(color: Colors.white70, fontSize: 20.0, fontWeight: FontWeight.w600)
  ),
  selectedRowColor: Color(0xFF4AC8EA),
  bottomAppBarTheme: BottomAppBarTheme(
    color: Color(0xFF272D34),
  )
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  backgroundColor: Colors.black,
  primarySwatch: Colors.grey,
  accentColor: Colors.grey,
  primaryColor: Colors.black,
  textTheme: TextTheme(subhead: TextStyle(color: Colors.black), button: TextStyle(color: Colors.black)),
  buttonColor: Colors.white,
);
