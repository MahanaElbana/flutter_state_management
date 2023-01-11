
import 'package:cubit_basketball/config/theme.dart';
import 'package:cubit_basketball/core/utils/app_strings.dart';
import 'package:cubit_basketball/f_basketball/presentation/cubit/basketball_cubit.dart';
import 'package:cubit_basketball/f_basketball/presentation/screens/basketball.dart';
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
