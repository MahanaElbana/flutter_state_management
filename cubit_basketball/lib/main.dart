
import 'package:cubit_basketball/app.dart';
import 'package:cubit_basketball/f_basketball/presentation/cubit/basketball_cubit.dart';
import 'package:cubit_basketball/f_basketball/service/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();
   await SharedPrefs .init();   // Call sharedpreference class here
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<BasketBallCubit>(
          create: (BuildContext context) => BasketBallCubit(),
        ),
      ],
      child: const BasketBallApp(),
    ),
  );
}
