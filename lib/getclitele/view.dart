import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/app.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/cjzb/cjzbdetail/page.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/cjzb/page.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/hotzx/page.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(GetCliteleState state, Dispatch dispatch, ViewService viewService) {
  YicaifuApp yicaifuApp = YicaifuApp();
  return Scaffold(
    appBar: new AppBar(
      title: new Text(
        '获客'
      ),
      bottom: TabBar(
          tabs: List.generate(state.tabs.length, (index){
            return new Text(
              state.tabs[index]
            );
          }),
          controller: state.tabController,
      ),
    ),
    body: TabBarView(
      children: <Widget>[
//        添加子组件
        CjzbPage().buildPage(null),
        HotzxPage().buildPage(null)
      ],
      controller: state.tabController,
    )
  );
}