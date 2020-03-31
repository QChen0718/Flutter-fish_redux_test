

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/keepalive_widget.dart';
import 'package:flutter_fish_redux_router_qt/app.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(GetCliteleState state, Dispatch dispatch, ViewService viewService) {
  return Builder(
      builder: (context){
        Widget _buildPage(Widget page){
          return KeepAliveWidget(page);
        }
        return  Scaffold(
            appBar: new AppBar(
              title: new Text(
                  state.navtitle
              ),
//              安卓上默认是在最左边的
              centerTitle: true,
              bottom: TabBar(
                tabs: List.generate(state.tabs.length, (index){
                  return new Text(
                      state.tabs[index].name
                  );
                }),
                controller: state.tabController,
              ),
            ),
            body: TabBarView(
              children: state.controllers.map(_buildPage).toList(),
              controller: state.tabController,
            )
        );
      }
  );
}