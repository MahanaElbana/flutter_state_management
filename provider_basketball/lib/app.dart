import 'package:flutter/material.dart';
import 'package:provider_basketball/config/theme.dart';
import 'package:provider_basketball/core/utils/app_strings.dart';
import 'package:provider_basketball/f_basketball/presentation/riverpod/basketball_riverpod.dart';
import 'package:provider_basketball/f_basketball/presentation/screens/basketball.dart';
import 'package:provider/provider.dart';

class BasketBallApp extends StatelessWidget {
  const BasketBallApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,
      theme:
          Styles.themeData(context.watch<BasketBallProvider>().isDark, context),
      home: const BasketballPointScreen(),
    );
  }
}
