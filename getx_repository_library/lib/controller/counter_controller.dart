import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class CounterController extends GetxController {
  increment();
  decrement();
  resetCounter();
  changeActionState();
}

class CounterControllerImp extends CounterController {
  int _counter = 0;
  int get counter => _counter;
  bool isAction = false;

  @override
  decrement() {
    _counter--;
    update();
  }

  @override
  increment() {
    _counter++;
    update();
  }

  @override
  resetCounter() {
    _counter = 0;
    update();
  }

  @override
  void onInit() {
    debugPrint('intialization');
    super.onInit();
  }

  @override
  void onClose() {
    debugPrint('close');
    super.onClose();
  }

  @override
  changeActionState() async {
    /// change the state action firstly
    isAction = !isAction;
    update();

    /// do the operation
    await Future.delayed(
      const Duration(milliseconds: 4000),
      () => "My wating time",
    ).then(
      (value) {
        isAction = !isAction;
        update();
        debugPrint(value);
      },
    );
  }
}
