import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(NewGetCliteleState state, Dispatch dispatch, ViewService viewService) {
  return new Scaffold(
    appBar: new AppBar(
      title: new Text(
        state.navtitle,
        style: new TextStyle(
            color: Color(0xff333333),
          fontSize: Adapt.px(34)
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      actions: <Widget>[
        new GestureDetector(
          onTap: (){

          },
          child: Padding(
            padding: new EdgeInsets.only(right: 20),
            child: new Image.asset(
              state.navrightbtnname,
              width: Adapt.px(38),
              height: Adapt.px(33),
            ),
          ),
        ),
      ],
    ),
    body: new Container(
      color: Colors.white,
      child: new Column(
        children: <Widget>[
          viewService.buildComponent('numbercell'),
          viewService.buildComponent('markingcell'),
          viewService.buildComponent('cliteleitemcell')
        ],
      ),
    ),
  );
}