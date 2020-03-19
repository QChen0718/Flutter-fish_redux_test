import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/cjzb/state.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/hotzx/page.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/hotzx/state.dart';

// 使用 SingleTickerProviderStateMixin 主要是TabBar需要用到这块
class GetCliteleStateKeepAliveStf extends ComponentState<GetCliteleState> with SingleTickerProviderStateMixin{

}
class GetCliteleState implements Cloneable<GetCliteleState>  {
  Context context;
  List<String> tabs;
  TabController tabController;
  CjzbState cjzbState;
  HotzxState hotzxState;

  @override
  GetCliteleState clone() {
    return GetCliteleState()
    ..context = context
    ..tabs = tabs
    ..tabController = tabController;
  }
}

GetCliteleState initState(Map<String, dynamic> args) {
  List<String> tabs = ['财经早报','热门资讯'];
  return GetCliteleState()
  ..tabs = tabs;
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