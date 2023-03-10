import 'package:cubit_basketball/f_basketball/presentation/cubit/basketball_states.dart';
import 'package:cubit_basketball/f_basketball/service/theme_service.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class BasketBallCubit extends Cubit<BasketBallStates> {
  int teamAValue = 0;
  int teamBValue = 0;
  bool _isDark = SharedPrefs().isDark ?? false;
  bool get isDark => _isDark;
  BasketBallCubit() : super(BasketBallInitialState());

  void basketBallAction(BasketBallEnumAction action,
      {int amountOfexcess = 0, isDarkInput = false}) {
    if (action == BasketBallEnumAction.teamA) {
      teamAValue += amountOfexcess;
      emit(BasketBallTeamAIncrementState());
    } else if (action == BasketBallEnumAction.teamB) {
      teamBValue += amountOfexcess;
      emit(BasketBallTeamBIncrementState());
    } else if (action == BasketBallEnumAction.reset) {
      teamAValue = 0;
      teamBValue = 0;
      emit(BasketBallRestState());
    } else if (action == BasketBallEnumAction.changeTheme) {
      _isDark = isDarkInput;
      SharedPrefs().setThemeIndex(isDarkInput);
      emit(BasketBallChangeThemeState());
    }
  }
}

enum BasketBallEnumAction { teamA, teamB, reset, changeTheme }
