import 'package:flutter/material.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      primarySwatch: Colors.red,
      canvasColor: isDarkTheme ? Colors.black : Colors.grey[50],
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      appBarTheme: AppBarTheme(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.redAccent.shade700,
          foregroundColor:  isDarkTheme ? Colors.black : Colors.grey[50],
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.redAccent.shade700,
          foregroundColor: Colors.white,
          minimumSize: const Size(150, 50),
        ),
      ),
    );
  }
}
