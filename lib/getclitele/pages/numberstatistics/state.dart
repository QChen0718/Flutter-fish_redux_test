import 'package:fish_redux/fish_redux.dart';

class NumberStatisticsState implements Cloneable<NumberStatisticsState> {

  @override
  NumberStatisticsState clone() {
    return NumberStatisticsState();
  }
}

NumberStatisticsState initState(Map<String, dynamic> args) {
  return NumberStatisticsState();
}
