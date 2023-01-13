import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_basketball/core/utils/app_strings.dart';
import 'package:getx_basketball/f_basketball/controller/basketball_controller.dart';

class BasketballPointScreen extends StatelessWidget {
   BasketballPointScreen({super.key});
  final BasketBallController  basketBallController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ====================== app bar ================= //
      appBar: AppBar(
        title: const Text(
          AppStrings.appName,
        ),
        actions: [
          IconButton(
            onPressed: () {
               basketBallController.basketBallAction(
                    BasketBallEnumAction.changeTheme,
                    isDarkInput: ! basketBallController.isDark);
            },
            icon: Icon(
                ! basketBallController.isDark
                    ?
                Icons.light_mode_outlined
                    : Icons.dark_mode_rounded,
                color: basketBallController.isDark ? Colors.black : Colors.white,
                ),
          ),
        ],
      ),

      // ====================== body ================= //
      body: Center(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            'Team A',
                            style: TextStyle(
                              fontSize: 32,
                            ),
                          ),
                          GetBuilder<BasketBallController>(
                            
                            builder: (BasketBallController controller) {
                              return Text(
                                controller.teamAValue.toString(),
                                style: const TextStyle(
                                  fontSize: 50,
                                ),
                              );
                            }
                          ),
                          ElevatedButton(
                            onPressed: () {
                               basketBallController.basketBallAction(BasketBallEnumAction.teamA,
                                      amountOfexcess: 1);
                            },
                            child: const Text(
                              'Add 1 Point ',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              basketBallController.basketBallAction(BasketBallEnumAction.teamA,
                                      amountOfexcess: 2);
                            },
                            child: const Text(
                              'Add 2 Point',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              basketBallController.basketBallAction(BasketBallEnumAction.teamA,
                                      amountOfexcess: 3);
                            },
                            child: const Text(
                              'Add 3 Point ',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 500,
                    child: VerticalDivider(
                      indent: 50,
                      endIndent: 50,
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            'Team B',
                            style: TextStyle(
                              fontSize: 32,
                            ),
                          ),
                          GetBuilder(
                            
                            builder: (BasketBallController controller) {
                              return Text(
                                controller.teamBValue.toString(),
                                style: const TextStyle(
                                  fontSize: 50,
                                ),
                              );
                            }
                          ),
                          ElevatedButton(
                            onPressed: () {
                               basketBallController.basketBallAction(BasketBallEnumAction.teamB,
                                        amountOfexcess: 1);
                            },
                            child: const Text(
                              'Add 1 Point ',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                               basketBallController.basketBallAction(BasketBallEnumAction.teamB,
                                        amountOfexcess: 2);
                            },
                            child: const Text(
                              'Add 2 Point ',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              basketBallController .basketBallAction(BasketBallEnumAction.teamB,
                                        amountOfexcess: 3);
                            },
                            child: const Text(
                              'Add 3 Point ',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                 basketBallController .basketBallAction(BasketBallEnumAction.reset,
                  ) ;
                },
                child: const Text(
                  'Reset',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
