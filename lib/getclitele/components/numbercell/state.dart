import 'package:fish_redux/fish_redux.dart';

class CliteleNumberState implements Cloneable<CliteleNumberState> {

  @override
  CliteleNumberState clone() {
    return CliteleNumberState();
  }
}

CliteleNumberState initState(Map<String, dynamic> args) {
  return CliteleNumberState();
}
