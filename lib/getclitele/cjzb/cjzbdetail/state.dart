import 'package:fish_redux/fish_redux.dart';

class CjzbDetailState implements Cloneable<CjzbDetailState> {

  @override
  CjzbDetailState clone() {
    return CjzbDetailState();
  }
}

CjzbDetailState initState(Map<String, dynamic> args) {
  return CjzbDetailState();
}
