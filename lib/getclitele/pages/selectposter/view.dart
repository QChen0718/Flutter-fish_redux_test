import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';
import 'package:flutter_fish_redux_router_qt/actions/navbar.dart';

import '../../../app.dart';
import 'action.dart';
import 'state.dart';

Widget buildView(SelectPosterState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    backgroundColor: Colors.white,
    body: Column(
      children: <Widget>[
        new NavBar(
          titleStr: '精品海报',
        ),
        new Container(
          child: TabBar(
            tabs: List.generate(state.itemtitles.length, (index){
              return _item(state.itemtitles[index]);
            }),
            controller: state.tabController,
            labelColor:Color(0xffFF6633),
            unselectedLabelColor: Color(0xff333333),
            labelPadding: EdgeInsets.only(top: 10,bottom: 10),
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
            children: [
              YicaifuApp.routes.buildPage('hotfinancialword', null),
              YicaifuApp.routes.buildPage('topshare', null),
              YicaifuApp.routes.buildPage('hotfinancialword', null),
            ],
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
        fontSize: Adapt.px(34)
    ),
  );
}