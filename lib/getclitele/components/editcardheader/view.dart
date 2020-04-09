import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
    EditCardHeaderviewState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    margin: EdgeInsets.all(Adapt.px(30)),
    child: Row(
      children: <Widget>[
        new Image.asset(
          state.headerphoto,
          width: Adapt.px(170),
          height: Adapt.px(226),
          fit: BoxFit.fill,
        ),
        new Container(
            margin: EdgeInsets.only(left: Adapt.px(40)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  child: new Text(
                    state.headertitle,
                    style: TextStyle(
                        color: Color(0xff333333), fontSize: Adapt.px(32)),
                  ),
                ),
                new Container(
                  margin: EdgeInsets.only(top: Adapt.px(15)),
                  width: Adapt.px(480),
                  child: new Text(
                    state.headercontent,
                    style: TextStyle(
                      color: Color(0xffFF6633),
                      fontSize: Adapt.px(24),
                    ),
                  ),
                ),
                new Container(
                  margin: EdgeInsets.only(top: Adapt.px(15)),
                  child: new Text(
                    state.headersize,
                    style: TextStyle(
                        color: Color(0xffBDBDBD), fontSize: Adapt.px(20)),
                  ),
                )
              ],
            ))
      ],
    ),
  );
}
