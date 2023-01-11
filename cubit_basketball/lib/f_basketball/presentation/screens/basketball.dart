import 'package:cubit_basketball/core/utils/app_strings.dart';
import 'package:cubit_basketball/f_basketball/presentation/bloc/basketball_cubit.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class BasketballPointScreen extends StatelessWidget {
  const BasketballPointScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkStatus = context.watch<BasketBallBloc>().isDark;
    return Scaffold(
      // ====================== app bar ================= //
      appBar: AppBar(
        title: const Text(
         AppStrings.appName,
        ),
        actions: [
          IconButton(
            onPressed: () {
              BlocProvider.of<BasketBallBloc>(context).basketBallAction(
                  BasketBallEnumAction.changeTheme,
                  isDarkInput: !isDarkStatus);
            },
            icon: Icon(
              !isDarkStatus
                  ? Icons.light_mode_outlined
                  : Icons.dark_mode_rounded,
                  color: isDarkStatus ? Colors.black : Colors.white,
            
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
                            "${context.watch<BasketBallBloc>().teamAValue}",
                            style: const TextStyle(
                              fontSize: 50,
                            ),
                          ),
                          ElevatedButton(
                           
                            onPressed: () {
                              BlocProvider.of<BasketBallBloc>(context)
                                  .basketBallAction(
                                      BasketBallEnumAction.teamA,
                                      amountOfexcess: 1);
                            },
                            child: const Text(
                              'Add 1 Point ',
                              style: TextStyle(
                                  fontSize: 18, ),
                            ),
                          ),
                          ElevatedButton(
                         
                            onPressed: () {
                               BlocProvider.of<BasketBallBloc>(context)
                                  .basketBallAction(
                                      BasketBallEnumAction.teamA,
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
                              BlocProvider.of<BasketBallBloc>(context)
                                  .basketBallAction(
                                      BasketBallEnumAction.teamA,
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
                            '${context.watch<BasketBallBloc>().teamBValue}',
                            style: const TextStyle(
                              fontSize: 50,
                            ),
                          ),
                          ElevatedButton(
                         
                            onPressed: () {
                              BlocProvider.of<BasketBallBloc>(context)
                                  .basketBallAction(
                                      BasketBallEnumAction.teamB,
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
                          BlocProvider.of<BasketBallBloc>(context)
                                  .basketBallAction(
                                      BasketBallEnumAction.teamB,
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
                              BlocProvider.of<BasketBallBloc>(context)
                                  .basketBallAction(
                                      BasketBallEnumAction.teamB,
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
                  BlocProvider.of<BasketBallBloc>(context)
                                  .basketBallAction(
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
