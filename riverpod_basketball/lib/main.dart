
import 'package:flutter/material.dart';
import 'package:riverpod_basketball/app.dart';
import 'package:riverpod_basketball/f_basketball/presentation/cubit/basketball_cubit.dart';
import 'package:riverpod_basketball/f_basketball/service/theme_service.dart';


void main() async{
   WidgetsFlutterBinding.ensureInitialized();
   await SharedPrefs .init();   // Call sharedpreference class here
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<BasketBallBloc>(
          create: (BuildContext context) => BasketBallBloc(),
        ),
      ],
      child: const BasketBallApp(),
    ),
  );
}
