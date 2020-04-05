import 'package:fish_redux/fish_redux.dart';

class StaticsHeaderState implements Cloneable<StaticsHeaderState> {
  List<Map<String,dynamic>> listdata;
  @override
  StaticsHeaderState clone() {
    return StaticsHeaderState()
    ..listdata = listdata;
  }
}

StaticsHeaderState initState(Map<String, dynamic> args) {
  return StaticsHeaderState();
}
