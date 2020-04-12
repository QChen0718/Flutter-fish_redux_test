import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';
import 'package:flutter_fish_redux_router_qt/actions/keepalive_widget.dart';
import 'package:flutter_fish_redux_router_qt/actions/navbar.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(SelectPosterState state, Dispatch dispatch, ViewService viewService) {
  Widget _buildPage(Widget page){
    return KeepAliveWidget(page);
  }
  return Scaffold(
    backgroundColor: Colors.white,
    body: Column(
      children: <Widget>[
        new NavBar(
          titleStr: state.nav_title,
        ),
        new Container(
          child: TabBar(
            isScrollable: true,
            tabs: List.generate(state.itemtitles?.length ?? 0, (index){
              return _item(state.itemtitles[index].name);
            }),
            controller: state.tabController,
            labelColor:Color(0xffFF6633),
            unselectedLabelColor: Color(0xff333333),
            labelPadding: EdgeInsets.only(top: Adapt.px(20),bottom: Adapt.px(20),left: Adapt.px(56),right: Adapt.px(56)),
            indicatorColor: Colors.transparent,
          ),
          decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(color: Color(0xfff5f5f5),width: Adapt.px(5))
            ),
          ),
        ),
        Flexible(
          child: new TabBarView(
            children: state.controllers.map(_buildPage).toList(),
            controller: state.tabController,
          ),
        )
      ],
    ),
  );
}
_item(String titlestr){
  return Text(
    titlestr,
    style: TextStyle(
        fontSize: Adapt.px(32)
    ),
  );
}