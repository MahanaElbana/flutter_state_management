
import 'package:cubit_basketball/app.dart';
import 'package:cubit_basketball/f_basketball/presentation/bloc/basketball_cubit.dart';
import 'package:cubit_basketball/f_basketball/service/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
