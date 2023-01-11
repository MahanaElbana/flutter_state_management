import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_basketball/app.dart';

import 'package:riverpod_basketball/f_basketball/service/theme_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefs.init(); // Call sharedpreference class here
  runApp(
   const  ProviderScope(
      child:  BasketBallApp(),
    ),
  );
}
