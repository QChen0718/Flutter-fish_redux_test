import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';
import 'package:flutter_fish_redux_router_qt/actions/keepalive_widget.dart';
import 'package:flutter_fish_redux_router_qt/actions/navbar.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(GreatVideoState state, Dispatch dispatch, ViewService viewService) {
  Widget _buildPage(Widget page){
    return KeepAliveWidget(page);
  }
  return Scaffold(
    backgroundColor: Colors.white,
    body: new Column(
      children: <Widget>[
        new NavBar(
          titleStr: state.navtitle,
        ),
        new Container(
          child: new TabBar(
              tabs: List.generate(state.tabtitles.length, (index){
                return tabtitle(state.tabtitles[index]);
              }),
            labelPadding: EdgeInsets.only(top: Adapt.px(20),bottom: Adapt.px(20)),
            labelColor: Color(0xffFF6633),
            unselectedLabelColor: Color(0xff333333),
            controller: state.tabController,
            indicatorColor: Colors.transparent,
          ),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Color(0xfff5f5f5),
                width: Adapt.px(2)
              )
            )
          ),
        ),
        new Expanded(
            child: new TabBarView(
                children: state.controllers.map(_buildPage).toList(),
                controller: state.tabController,
            )
        )
      ],
    ),
  );
}

Widget tabtitle(String title){
  return new Text(
    title,
    style: new TextStyle(
      fontSize: Adapt.px(32)
    ),
  );
}