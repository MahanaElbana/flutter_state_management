import 'package:flutter/material.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
     
    return ThemeData(
      primarySwatch: Colors.indigo,
      canvasColor: isDarkTheme ? Colors.black : Colors.grey[50],
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      appBarTheme: const AppBarTheme(elevation: 0.0, centerTitle: true),
    );
  }
}
