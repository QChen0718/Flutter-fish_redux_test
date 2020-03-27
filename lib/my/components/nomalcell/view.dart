import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(NomalcellState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    height: Adapt.px(90),
    child: new Row(
      children: <Widget>[
        new Container(
          child: new Image.asset(
            state.nomal_iconname,
            width: Adapt.px(47),
            height: Adapt.px(39),
          ),
        ),
        new Expanded(
            child: new Text(
              state.nomal_title,
              style: new TextStyle(
                  color: Color(0xff333333),
                  fontSize: Adapt.px(34)
              ),
            )
        ),
        new Container(
          margin: EdgeInsets.only(right: Adapt.px(30)),
          child: new Image.asset(
            state.nomal_arrow,
            width: Adapt.px(16),
            height: Adapt.px(26),
          ),
        )
      ],
    ),
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Color(0xfff5f5f5),
          width: Adapt.px(1)
        )
      )
    ),
  );
}
