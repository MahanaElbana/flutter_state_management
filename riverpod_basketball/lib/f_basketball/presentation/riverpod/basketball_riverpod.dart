

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_basketball/f_basketball/service/theme_service.dart';

final basketBallProvider = ChangeNotifierProvider<BasketBallRiverpod>((ref) {
  return BasketBallRiverpod();
});

class BasketBallRiverpod extends ChangeNotifier{
  
  int teamAValue = 0;
  int teamBValue = 0;
  bool _isDark = SharedPrefs().isDark ?? false;
  bool get isDark => _isDark;

  void basketBallAction(BasketBallEnumAction action,
      {int amountOfexcess = 0, isDarkInput = false}) {
    if (action == BasketBallEnumAction.teamA) {
      teamAValue += amountOfexcess;
      notifyListeners(); 
    } else if (action == BasketBallEnumAction.teamB) {
      teamBValue += amountOfexcess;
        notifyListeners(); 
    } else if (action == BasketBallEnumAction.reset) {
      teamAValue = 0;
      teamBValue = 0;
        notifyListeners(); 
    } else if (action == BasketBallEnumAction.changeTheme) {
      _isDark = isDarkInput;
      SharedPrefs().setThemeIndex(isDarkInput);
      notifyListeners(); 
    }
  }
}

enum BasketBallEnumAction { teamA, teamB, reset, changeTheme }
