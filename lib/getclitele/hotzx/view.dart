import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/hotzx/subwidget/page.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(HotzxState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    body: new Center(
      child: new Column(
        children: <Widget>[
          new RaisedButton(
              onPressed: (){

              },
            child: new Text(
              state.titlename
            ),
          ),
          Expanded(
              child:
//                  添加子组件
              viewService.buildComponent('header')
          )

        ],
      ),
    ),
  );
}
