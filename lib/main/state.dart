import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/page.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/state.dart';

const _tabTitles = ['获客','客户','我的'];
const _tabImagenames = ['images/home.webp','images/customer.webp','images/my.webp'];
const _tabselectImagenames = ['images/home_select.webp','images/customer_select.webp','images/my_select.webp'];
//存放数据的地方
class MainState implements Cloneable<MainState> {
  List<BottomNavigationBarItem> tabs;
  List<Widget> controllers;
//  选择的下标
  int selectIndex;
  GetCliteleState getCliteleState;
  @override
  MainState clone() {
    return MainState()
    ..selectIndex = selectIndex
    ..tabs = tabs
    ..controllers = controllers
    ..getCliteleState = getCliteleState;
  }
}

MainState initState(Map<String, dynamic> args) {
//  初始化赋值属性
  List<BottomNavigationBarItem> tabs = List.generate(_tabTitles.length, (index){
      return new BottomNavigationBarItem(
          icon: Image.asset(
              _tabImagenames[index],
          ),
          title: new Text(
            _tabTitles[index],
          ),
        activeIcon: Image.asset(
          _tabselectImagenames[index]
        )

      );
  });

  GetCliteleState getCliteleState = GetCliteleState();
  return MainState()
  ..tabs = tabs
  ..selectIndex = 0
  ..getCliteleState = getCliteleState
  ..controllers = args['pages'];
}
// 获客
class GetCliteleConnector extends ConnOp<MainState,GetCliteleState> {
  @override
  GetCliteleState get (MainState state) => state.getCliteleState;
  @override
  void set(MainState state, GetCliteleState subState) {
    state.getCliteleState = subState;
  }
}