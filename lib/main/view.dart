import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/app.dart';
import 'package:flutter_fish_redux_router_qt/customer/page.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/getclitele_detail/page.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/page.dart';
import 'package:flutter_fish_redux_router_qt/my/page.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(MainState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    bottomNavigationBar: BottomNavigationBar(
        currentIndex: state.selectIndex,
        items: state.tabs,
        onTap: (index){
//          发送切换TabBar的事件
          dispatch(MainActionCreator.onTabBarChange(index));
        },
    ),
    body: state.controllers[state.selectIndex]
  );
}