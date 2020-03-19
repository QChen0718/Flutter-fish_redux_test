import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/app.dart';

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
      children: state.controllers,
      controller: state.tabController,
    )
  );
}