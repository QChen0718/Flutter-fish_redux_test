import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

const _tabTitles = ['获客','客户','我的'];
const _tabImagenames = ['images/home.webp','images/customer.webp','images/my.webp'];
const _tabselectImagenames = ['images/home_select.webp','images/customer_select.webp','images/my_select.webp'];

//存放数据的地方
class MainState implements Cloneable<MainState> {
  List<BottomNavigationBarItem> tabs;
  List<Widget> controllers;
//  选择的下标
  int selectIndex;
  BuildContext rootcontext;
  GlobalKey<ScaffoldState> scaffoldKey;
  static GlobalKey<ScaffoldState> cscaffoldKey;
  @override
  MainState clone() {
    return MainState()
    ..selectIndex = selectIndex
    ..tabs = tabs
    ..controllers = controllers
    ..rootcontext = rootcontext
    ..scaffoldKey = scaffoldKey;
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
  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  MainState.cscaffoldKey = scaffoldKey;
  return MainState()
  ..tabs = tabs
  ..selectIndex = 0
  ..controllers = args['pages']
  ..scaffoldKey = scaffoldKey;
}