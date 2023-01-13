import 'package:flutter/material.dart';
import 'package:provider_basketball/core/utils/app_strings.dart';
import 'package:provider_basketball/f_basketball/presentation/riverpod/basketball_riverpod.dart';

import 'package:provider/provider.dart';

class BasketballPointScreen extends StatelessWidget {
  const BasketballPointScreen({super.key});

  @override
  Widget build(BuildContext context) {
   bool darkStatus = context.watch<BasketBallProvider>().isDark ; 
    // var myProviderDataReading  = ref.watch(basketBallProvider);
    return Scaffold(
      // ====================== app bar ================= //
      appBar: AppBar(
        title: const Text(
          AppStrings.appName,
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.read<BasketBallProvider>().basketBallAction(
                  BasketBallEnumAction.changeTheme,
                  isDarkInput: !darkStatus);
            },
            icon: Icon(
              !darkStatus
                  ? Icons.light_mode_outlined
                  : Icons.dark_mode_rounded,
              color: darkStatus
                  ? Colors.black
                  : Colors.white,
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
                            "${context.watch<BasketBallProvider>().teamAValue}",
                            style: const TextStyle(
                              fontSize: 50,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              context
                                  .read<BasketBallProvider>()
                                  .basketBallAction(BasketBallEnumAction.teamA,
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
                              context
                                  .read<BasketBallProvider>()
                                  .basketBallAction(BasketBallEnumAction.teamA,
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
                              context
                                  .read<BasketBallProvider>()
                                  .basketBallAction(BasketBallEnumAction.teamA,
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
                            '${context.watch<BasketBallProvider>().teamBValue}',
                            style: const TextStyle(
                              fontSize: 50,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              context
                                  .read<BasketBallProvider>()
                                  .basketBallAction(BasketBallEnumAction.teamB,
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
                              context
                                  .read<BasketBallProvider>()
                                  .basketBallAction(BasketBallEnumAction.teamB,
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
                              context
                                  .read<BasketBallProvider>()
                                  .basketBallAction(BasketBallEnumAction.teamB,
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
                  context.read<BasketBallProvider>().basketBallAction(
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
