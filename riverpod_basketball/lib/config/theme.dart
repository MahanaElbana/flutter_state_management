import 'package:flutter/material.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      primarySwatch: Colors.green,
      scaffoldBackgroundColor: isDarkTheme ? Colors.black : Colors.grey[50],
     //  TextTheme
      textTheme: TextTheme(
        bodyText2: TextStyle(
          color: isDarkTheme ? Colors.white : Colors.black,
        ),
      ),
      appBarTheme: AppBarTheme(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.greenAccent.shade700,
        foregroundColor: isDarkTheme ? Colors.white : Colors.black,
      ),
      //  ElevatedButtonThemeData
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.greenAccent.shade700,
          foregroundColor: isDarkTheme ? Colors.white : Colors.black,
          minimumSize: const Size(150, 50),
        ),
      ),
      //  ElevatedButtonThemeData
    );
  }
}
