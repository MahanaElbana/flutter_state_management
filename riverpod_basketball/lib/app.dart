

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_basketball/config/theme.dart';
import 'package:riverpod_basketball/core/utils/app_strings.dart';
import 'package:riverpod_basketball/f_basketball/presentation/cubit/basketball_cubit.dart';
import 'package:riverpod_basketball/f_basketball/presentation/screens/basketball.dart';

class BasketBallApp extends ConsumerWidget {
  const BasketBallApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var myProvider = ref.watch(basketBallProvider) ; 
    return MaterialApp(
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,
      theme: Styles.themeData(myProvider.isDark, context),
      home: const BasketballPointScreen(),
    );
  }
}
