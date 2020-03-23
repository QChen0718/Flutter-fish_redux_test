import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/keepalive_widget.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(MainState state, Dispatch dispatch, ViewService viewService) {
  return Builder(
      builder: (context){
        final pageController = PageController();
        Widget _buildPage(Widget page){
          return KeepAliveWidget(page);
        }
        List<Widget> _configPage(List<Widget> pages){
          return pages.map(_buildPage).toList();
        }
        return Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: state.selectIndex,
              items: state.tabs,
              onTap: (index) {
                pageController.jumpToPage(index);
              },
            ),
            body: PageView(
//              设置禁止滑动
              physics: NeverScrollableScrollPhysics(),
              children: state.controllers.map(_buildPage).toList(),
              controller: pageController,
              onPageChanged: (int i) =>
                  dispatch(MainActionCreator.onTabBarChange(i)),
            ),
        );
      });
}
