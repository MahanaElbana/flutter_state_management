import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:provider_basketball/app.dart';
import 'package:provider_basketball/f_basketball/presentation/riverpod/basketball_riverpod.dart';
import 'package:provider_basketball/f_basketball/service/theme_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefs.init(); // Call sharedpreference class here
  runApp(
   ChangeNotifierProvider<BasketBallProvider>(
     create: (context) => BasketBallProvider(),
      child: const BasketBallApp(),
    ),
  );
}
