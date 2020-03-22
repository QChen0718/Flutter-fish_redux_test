import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/keepalive_widget.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(MainState state, Dispatch dispatch, ViewService viewService) {
  return Builder(
      builder: (context){
        Widget _buildPage(Widget page){
          return KeepAliveWidget(page);
        }
        return Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: state.selectIndex,
              items: state.tabs,
              onTap: (index) {
//          发送切换TabBar的事件
                dispatch(MainActionCreator.onTabBarChange(index));
              },
            ),
            body: _buildPage(state.controllers[state.selectIndex])
        );
      });
}
