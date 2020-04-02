import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';
import 'package:flutter_fish_redux_router_qt/actions/navbar.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(MarketingZSState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    backgroundColor: Colors.white,
    body: new Column(
      children: <Widget>[
        new NavBar(
          titleStr: state.nav_title,
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
            indicatorColor: Color(0xffFF6633),
            indicatorWeight: Adapt.px(4),
            indicatorSize: TabBarIndicatorSize.label,
          ),
          decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(color: Color(0xffC7C6C6),width: 0.5)
            ),
          ),
        ),
        Flexible(
          child: new TabBarView(
            children: [
//              MarketingClues(),
//              SharejlPage(),
//              StatisticsPage(),
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