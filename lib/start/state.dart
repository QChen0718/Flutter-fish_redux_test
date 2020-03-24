import 'package:fish_redux/fish_redux.dart';

class StartState implements Cloneable<StartState> {

  @override
  StartState clone() {
    return StartState();
  }
}

StartState initState(Map<String, dynamic> args) {
  return StartState();
}
