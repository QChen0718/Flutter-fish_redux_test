import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/hotzx/components/state.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/hotzx/subwidget/state.dart';

class HotzxState implements Cloneable<HotzxState> {
  SubItemState subItemState;
  String titlename;
  bool showHeaderMovie;
  HeaderState headerState;
  @override
  HotzxState clone() {
    return HotzxState()
    ..titlename = titlename
    ..showHeaderMovie = showHeaderMovie
    ..headerState = headerState;
  }
}

HotzxState initState(Map<String, dynamic> args) {
  HeaderState headerState = HeaderState();
  headerState.content = "测试内容传递";
  return HotzxState()
  ..titlename = '热门资讯'
  ..showHeaderMovie = false
  ..headerState = headerState;
}