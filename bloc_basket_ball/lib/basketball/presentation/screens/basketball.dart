import 'package:bloc_shared_pref/features/basketball/presentation/bloc/basketball_bloc.dart';
import 'package:bloc_shared_pref/features/basketball/presentation/bloc/basketball_events.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class BasketballPointScreen extends StatelessWidget {
  const BasketballPointScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ====================== app bar ================= //
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text(
          'Pasketball Points',
          style: TextStyle(color: Color(0xffffffff)),
        ),
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
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.indigo,
                              foregroundColor: Colors.white,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<BasketBallBloc>(context)
                                  .add(BasketBallTeamAIncrementEvent(point: 1));
                            },
                            child: const Text(
                              'Add 1 Point ',
                              style:
                                  TextStyle(fontSize: 18, color: Color(0xffffffff)),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.indigo,
                              foregroundColor: Colors.white,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<BasketBallBloc>(context)
                                  .add(BasketBallTeamAIncrementEvent(point: 2));
                            },
                            child: const Text(
                              'Add 2 Point',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.indigo,
                              foregroundColor: Colors.white,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<BasketBallBloc>(context)
                                  .add(BasketBallTeamAIncrementEvent(point: 3));
                            },
                            child: const Text(
                              'Add 3 Point ',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xffffffff),
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
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.indigo,
                              foregroundColor: Colors.white,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                               BlocProvider.of<BasketBallBloc>(context)
                                  .add(BasketBallTeamBIncrementEvent(point: 1));
                            },
                            child: const Text(
                              'Add 1 Point ',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.indigo,
                              foregroundColor: Colors.white,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                               BlocProvider.of<BasketBallBloc>(context)
                                  .add(BasketBallTeamBIncrementEvent(point: 2));
                            },
                            child: const Text(
                              'Add 2 Point ',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.indigo,
                              foregroundColor: Colors.white,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                               BlocProvider.of<BasketBallBloc>(context)
                                  .add(BasketBallTeamBIncrementEvent(point:3));
                            },
                            child: const Text(
                              'Add 3 Point ',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xffffffff),
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
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(150, 50),
                ),
                onPressed: () {
                   BlocProvider.of<BasketBallBloc>(context)
                                .add(BasketBallRestEvent());
                },
                child: const Text(
                  'Reset',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xffffffff),
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
