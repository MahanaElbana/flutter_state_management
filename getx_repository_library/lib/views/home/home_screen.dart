import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../counter/counter_screen.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key, required this.title});

  final String title;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
             Text(
              'You have pushed the button this many times:',
            ),
           
           
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(CounterScreen());
        },
        tooltip: 'Increment',
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
