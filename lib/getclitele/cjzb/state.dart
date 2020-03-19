import 'package:fish_redux/fish_redux.dart';

class CjzbState implements Cloneable<CjzbState> {

  @override
  CjzbState clone() {
    return CjzbState();
  }
}

CjzbState initState(Map<String, dynamic> args) {
  return CjzbState();
}
