import 'package:fish_redux/fish_redux.dart';

class YCFClimateState implements Cloneable<YCFClimateState> {

  @override
  YCFClimateState clone() {
    return YCFClimateState();
  }
}

YCFClimateState initState(Map<String, dynamic> args) {
  return YCFClimateState();
}
