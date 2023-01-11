import 'package:bloc_basket_ball/basketball/domain/shared_theme.dart';
import 'package:bloc_basket_ball/basketball/presentation/bloc/basketball_events.dart';
import 'package:bloc_basket_ball/basketball/presentation/bloc/basketball_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BasketBallBloc extends Bloc<BasketBallEvents, BasketBallStates> {
  int teamAValue = 0;
  int teamBValue = 0;
  bool _isDark = SharedPrefs().isDark ?? false;
  bool get isDark => _isDark;
  BasketBallBloc() : super(BasketBallInitialState()) {
    on<BasketBallEvents>((event, emit) async {
      if (event is BasketBallRestEvent) {
        teamAValue = 0;
        teamBValue = 0;
        emit(BasketBallRestState());
      } else if (event is BasketBallTeamAIncrementEvent) {
        teamAValue += event.point;
        emit(BasketBallTeamAIncrementState());
      } else if (event is BasketBallTeamBIncrementEvent) {
        teamBValue += event.point;
        emit(BasketBallTeamBIncrementState());
      } else if (event is BasketBallChangeThemeEvent) {
         _isDark = event.isDark;
        SharedPrefs().setThemeIndex(event.isDark);
        emit(BasketBallChangeThemeState());
      }
    });
  }
}
