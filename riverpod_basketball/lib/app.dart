

import 'package:flutter/material.dart';
import 'package:riverpod_basketball/config/theme.dart';
import 'package:riverpod_basketball/core/utils/app_strings.dart';
import 'package:riverpod_basketball/f_basketball/presentation/screens/basketball.dart';

class BasketBallApp extends StatelessWidget {
  const BasketBallApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,
     //  theme: Styles.themeData(context.watch<BasketBallBloc>().isDark, context),
      home: const BasketballPointScreen(),
    );
  }
}
