abstract class BasketBallEvents {}

class BasketBallTeamAIncrementEvent extends BasketBallEvents {
  final int point;
  BasketBallTeamAIncrementEvent({required this.point});
}

class BasketBallTeamBIncrementEvent extends BasketBallEvents {
  final int point;
  BasketBallTeamBIncrementEvent({required this.point});
}

class BasketBallRestEvent extends BasketBallEvents {}

// ---------------- change theme -------------------- //
class BasketBallChangeThemeEvent extends BasketBallEvents {
  final bool isDark;
  BasketBallChangeThemeEvent({required this.isDark}); 
}
