import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/counter_controller.dart';

class CounterScreen extends StatelessWidget {
  CounterScreen({super.key});

  final d = Get.lazyPut<CounterControllerImp>(() => CounterControllerImp(),
      fenix: false);
  final counterController = Get.find<CounterControllerImp>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('counter screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  heroTag: 'Increment',
                  onPressed: () => counterController.increment(),
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
                FloatingActionButton(
                  heroTag: 'decrement',
                  onPressed: () => counterController.decrement(),
                  tooltip: 'decrement',
                  child: const Icon(Icons.remove),
                ),
                FloatingActionButton(
                  heroTag: 'resetCounter',
                  onPressed: () => counterController.resetCounter(),
                  tooltip: 'resetCounter',
                  child: const Icon(Icons.restore),
                ),
              ],
            ),
            GetBuilder<CounterControllerImp>(
                init: CounterControllerImp(),
                builder: (controller) {
                  return Text(
                    '${controller.counter}',
                    style: Theme.of(context).textTheme.headlineMedium,
                  );
                }),
         
             const SizedBox(height:  10,) ,
            GetBuilder<CounterControllerImp>(
              init: CounterControllerImp(),
              builder: (controller) {
                return !controller.isAction
                    ? ElevatedButton(
                        onPressed: () => counterController.changeActionState(),
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.only(
                                left: 50, right: 50, top: 20, bottom: 20)),
                        child: const Text("SignIn"),
                      )
                    : const Center(
                        child: CircularProgressIndicator(),
                      );
              },
            ),
          ],
        ),
      ),
    );
  }
}
