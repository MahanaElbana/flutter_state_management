import 'package:bloc_basket_ball/basketball/presentation/screens/basketball.dart';
import 'package:bloc_basket_ball/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

class BasketBallApp extends StatelessWidget {
  const BasketBallApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(centerTitle: true),
        primarySwatch: Colors.indigo,
      ),
      home: const BasketballPointScreen(),
    );
  }
}
