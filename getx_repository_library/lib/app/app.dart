import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_repository_library/views/home/home_screen.dart';

class GetxLibraryApp extends StatelessWidget {
  const GetxLibraryApp._internal();
  static const GetxLibraryApp _getxLibraryApp = GetxLibraryApp._internal();
  factory GetxLibraryApp() {
    return _getxLibraryApp;
  }
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Getx Library',
       debugShowCheckedModeBanner: false,
       theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: const AppBarTheme(centerTitle: true ,backgroundColor: Colors.red) ,
      ),
      home:  HomeScreen(title: "GetX library"),
    );
  }
}
