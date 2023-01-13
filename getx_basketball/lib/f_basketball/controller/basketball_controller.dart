import 'package:get/get.dart';
import 'package:getx_basketball/f_basketball/service/theme_service.dart';

class BasketBallController extends GetxController {
  int teamAValue = 0;
  int teamBValue = 0;
  bool _isDark = SharedPrefs().isDark ?? false;
  bool get isDark => _isDark;

  void basketBallAction(BasketBallEnumAction action,
      {int amountOfexcess = 0, isDarkInput = false}) {
    if (action == BasketBallEnumAction.teamA) {
      teamAValue += amountOfexcess;
      update();
    } else if (action == BasketBallEnumAction.teamB) {
      teamBValue += amountOfexcess;
      update();
    } else if (action == BasketBallEnumAction.reset) {
      teamAValue = 0;
      teamBValue = 0;
      update();
    } else if (action == BasketBallEnumAction.changeTheme) {
      _isDark = isDarkInput;
      SharedPrefs().setThemeIndex(isDarkInput);
      update();
    }
  }
}

enum BasketBallEnumAction { teamA, teamB, reset, changeTheme }
