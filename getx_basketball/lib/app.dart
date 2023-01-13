import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx_basketball/config/theme.dart';
import 'package:getx_basketball/core/utils/app_strings.dart';
import 'package:getx_basketball/f_basketball/controller/basketball_controller.dart';

import 'package:getx_basketball/f_basketball/view/basketball.dart';

class BasketBallApp extends StatelessWidget {
  const BasketBallApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BasketBallController>(
      init: BasketBallController(),
      builder: (BasketBallController controller) => GetMaterialApp(
        title: AppStrings.appName,
        debugShowCheckedModeBanner: false,
        theme: Styles.themeData(controller.isDark, context),
        home: BasketballPointScreen(),
      ),
    );
  }
}
