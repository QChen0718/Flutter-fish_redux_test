import 'package:fish_redux/fish_redux.dart';

class MyCardState implements Cloneable<MyCardState> {

  @override
  MyCardState clone() {
    return MyCardState();
  }
}

MyCardState initState(Map<String, dynamic> args) {
  return MyCardState();
}
