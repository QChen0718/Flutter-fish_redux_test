import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/state.dart';

class CliteleNumberState implements Cloneable<CliteleNumberState> {
  String numberbg = 'images/number_bg.webp';
  String numbericon = 'images/number_icon.webp';
  String numbertext = '获客数据';
  List<Map<String,dynamic>> numberslist;
  @override
  CliteleNumberState clone() {
    return CliteleNumberState()
    ..numberbg = numberbg
    ..numbericon = numbericon
    ..numbertext = numbertext
    ..numberslist = numberslist;
  }
}

class CliteleNumberConnector extends ConnOp<NewGetCliteleState,CliteleNumberState>{
  @override
  CliteleNumberState get(NewGetCliteleState state) {
    // TODO: implement get
    return state.cliteleNumberState;
  }
  @override
  void set(NewGetCliteleState state, CliteleNumberState subState) {
    // TODO: implement set
    state.cliteleNumberState = subState;
  }
}