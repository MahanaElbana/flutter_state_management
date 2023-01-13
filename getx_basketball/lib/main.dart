
import 'package:flutter/material.dart';
import 'package:getx_basketball/app.dart';

import 'package:getx_basketball/f_basketball/service/theme_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefs.init(); // Call sharedpreference class here
  runApp(
   const BasketBallApp()
  );
}
