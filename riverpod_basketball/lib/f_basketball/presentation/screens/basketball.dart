import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_basketball/core/utils/app_strings.dart';
import 'package:riverpod_basketball/f_basketball/presentation/riverpod/basketball_riverpod.dart';

class BasketballPointScreen extends ConsumerWidget {
  const BasketballPointScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var myProviderAction =  ref.read(basketBallProvider);
    var myProviderDataReading  = ref.watch(basketBallProvider);
    return Scaffold(
      // ====================== app bar ================= //
      appBar: AppBar(
        title: const Text(
          AppStrings.appName,
        ),
        actions: [
          IconButton(
            onPressed: () {
              

             myProviderAction.basketBallAction(
                  BasketBallEnumAction.changeTheme,
                  isDarkInput: ! myProviderDataReading.isDark);
            },
            icon: Icon(
              !myProviderDataReading.isDark
                  ? Icons.light_mode_outlined
                  : Icons.dark_mode_rounded,
              color: myProviderAction.isDark ? Colors.black : Colors.white,
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
                          Text(
                            "${myProviderDataReading.teamAValue}",
                            style: const TextStyle(
                              fontSize: 50,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              myProviderAction.basketBallAction(BasketBallEnumAction.teamA,
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
                              myProviderAction.basketBallAction(BasketBallEnumAction.teamA,
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
                              myProviderAction.basketBallAction(BasketBallEnumAction.teamA,
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
                          Text(
                            '${myProviderDataReading.teamBValue}',
                            style: const TextStyle(
                              fontSize: 50,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                             myProviderAction.basketBallAction(BasketBallEnumAction.teamB,
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
                             myProviderAction.basketBallAction(BasketBallEnumAction.teamB,
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
                            myProviderAction .basketBallAction(BasketBallEnumAction.teamB,
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
                  ref.read(basketBallProvider).basketBallAction(
                    BasketBallEnumAction.reset,
                  );
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
