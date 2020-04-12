import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/jxzx/cjzb/state.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/jxzx/hotzx/state.dart';
import 'package:flutter_fish_redux_router_qt/models/newstitlemodel.dart';

// 一次使用的用 SingleTickerProviderStateMixin
// 使用 SingleTickerProviderStateMixin 主要是TabBar需要用到这块
// 多次使用时使用常规的TickerProviderStateMixin
// 如果一个状态被用于多个AnimationController对象，或者它被传递给其他对象，而这些对象可能不止一次地使用它，
// 那么不要混合使用一个单独的TickerProviderStateMixin，而是使用一个常规的TickerProviderStateMixin。
class GetCliteleStateKeepAliveStf extends ComponentState<GetCliteleState> with TickerProviderStateMixin{

}
class GetCliteleState implements Cloneable<GetCliteleState>  {
  Context context;
  List<NewsTitleData> tabs = [];
  TabController tabController;
  CjzbState cjzbState;
  HotzxState hotzxState;
  List<Widget> controllers = [];
  String navtitle;
  @override
  GetCliteleState clone() {
    return GetCliteleState()
    ..context = context
    ..tabs = tabs
    ..tabController = tabController
    ..controllers = controllers
    ..navtitle = navtitle;
  }
}

GetCliteleState initState(Map<String, dynamic> args) {
  return GetCliteleState()
  ..navtitle = '每日财经';
}

//财经早报
class CjzbPageConnector extends ConnOp<GetCliteleState,CjzbState> {
  @override
  CjzbState get(GetCliteleState state) => state.cjzbState;

  void set(GetCliteleState state,CjzbState subState){
    state.cjzbState = subState;
  }
}

//热门资讯
class HotzxPageConnector extends ConnOp<GetCliteleState,HotzxState> {
  @override
  HotzxState get(GetCliteleState state) => state.hotzxState;

  void set(GetCliteleState state,HotzxState subState){
    state.hotzxState = subState;
  }
}