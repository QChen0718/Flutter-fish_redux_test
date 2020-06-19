import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';
import 'package:flutter_fish_redux_router_qt/actions/navbar.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(addcustomerState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    backgroundColor: Colors.white,
    body: new Column(
      children: <Widget>[
        new NavBar(
          titleStr: '新增客户',
          rightIcons: <Widget>[
            new Container(
              margin: new EdgeInsets.only(right: Adapt.px(20)),
              child: new Text(
                '完成',
                style: new TextStyle(
                    color: Color(0xffFF6633),
                    fontSize: Adapt.px(34)
                ),
              ),
            )
          ],
        ),
//        撑满剩余的空间
        new Expanded(
            child: new MediaQuery.removePadding(
                removeTop: true,
                context: viewService.context,
                child: new ListView.builder(
                  itemBuilder: viewService.buildAdapter().itemBuilder,
                  itemCount: viewService.buildAdapter().itemCount,
                )
            )
        )
      ],
    ),
  );
}
