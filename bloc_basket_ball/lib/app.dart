import 'package:bloc_basket_ball/basketball/presentation/bloc/basketball_bloc.dart';
import 'package:bloc_basket_ball/basketball/presentation/screens/basketball.dart';
import 'package:bloc_basket_ball/config/theme.dart';
import 'package:bloc_basket_ball/core/utils/app_strings.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class BasketBallApp extends StatelessWidget {
  const BasketBallApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,
      theme: Styles.themeData(context.watch<BasketBallBloc>().isDark, context),
      home: const BasketballPointScreen(),
    );
  }
}
