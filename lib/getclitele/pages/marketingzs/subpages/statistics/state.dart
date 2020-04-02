import 'package:fish_redux/fish_redux.dart';

class StatisticsState implements Cloneable<StatisticsState> {

  @override
  StatisticsState clone() {
    return StatisticsState();
  }
}

StatisticsState initState(Map<String, dynamic> args) {
  return StatisticsState();
}
