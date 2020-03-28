import 'package:fish_redux/fish_redux.dart';

class StartState implements Cloneable<StartState> {
  String splash;
  @override
  StartState clone() {
    return StartState()
    ..splash = splash;
  }
}

StartState initState(Map<String, dynamic> args) {
  return StartState()
  ..splash = 'images/splash.png';
}
