

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';
import 'package:flutter_fish_redux_router_qt/actions/keepalive_widget.dart';
import 'package:flutter_fish_redux_router_qt/actions/navbar.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(GetCliteleState state, Dispatch dispatch, ViewService viewService) {
  return Builder(
      builder: (context){
        Widget _buildPage(Widget page){
          return KeepAliveWidget(page);
        }
        return  Scaffold(
          backgroundColor: Colors.white,
            body: new Column(
              children: <Widget>[
                NavBar(
                  titleStr: state.navtitle,
                ),
                new Container(
                  child: TabBar(
                    tabs: List.generate(state.tabs.length, (index){
                      return new Text(
                        state.tabs[index].name,
                        style: new TextStyle(
                            fontSize: Adapt.px(32)
                        ),
                      );
                    }),
                    labelColor: Color(0xffFF6633),
                    unselectedLabelColor: Color(0xff333333),
                    indicatorColor: Colors.transparent,
                    controller: state.tabController,
                    labelPadding: EdgeInsets.only(top: Adapt.px(20),bottom: Adapt.px(20)),
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
                Expanded(
                    child: TabBarView(
                      children: state.controllers.map(_buildPage).toList(),
                      controller: state.tabController,
                    )
                )

              ],
            )
        );
      }
  );
}