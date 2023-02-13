import 'package:flutter/material.dart';

class Themes {
  static final darkTheme = ThemeData(
    fontFamily: "Vazir",
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.purple,
      brightness: Brightness.dark,
      cardColor: Colors.black54,
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      color: Colors.black45,
    ),
    iconTheme: const IconThemeData(color: Colors.purple),
    cardColor: Colors.black54,
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Colors.cyan))),
    useMaterial3: true,
  );
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: "Vazir",
    bottomAppBarTheme: BottomAppBarTheme(color: Colors.grey[50]),
    cardColor: Colors.pink[50],
    iconTheme: const IconThemeData(color: Colors.purple),
    appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.purple,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25)),
    useMaterial3: true,
  );
}
