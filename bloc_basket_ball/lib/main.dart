import 'package:bloc_basket_ball/app.dart';
import 'package:bloc_basket_ball/basketball/domain/shared_theme.dart';
import 'package:bloc_basket_ball/basketball/presentation/bloc/basketball_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefs.init();   // Call sharedpreference class here
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
