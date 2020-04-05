import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(StaticsListcellState state, Dispatch dispatch, ViewService viewService) {
  return new Container(
    margin: EdgeInsets.only(left: Adapt.px(52),right: Adapt.px(52)),
    padding: EdgeInsets.only(top: Adapt.px(15),bottom: Adapt.px(15)),
    decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(color: Color(0xffC7C6C6),width: Adapt.px(1))
        )
    ),
    child: new Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        new Text(
          state.cellindex,
          style: TextStyle(
              color: Color(0xffFF6633),
              fontSize: Adapt.px(34)
          ),
        ),
        new Container(
          padding: EdgeInsets.only(left: Adapt.px(20),right: Adapt.px(15)),
          child: new Image.asset(
            state.photoHeader,
            width: Adapt.px(96),
            height: Adapt.px(96),
          ),
        ),
        new Expanded(
            child: Text(
              state.username,
              style: TextStyle(
                  color: Color(0xff333333),
                  fontSize: Adapt.px(34)
              ),
            )
        ),
        new Container(
          alignment: Alignment.center,
          width: Adapt.px(120),
          margin: EdgeInsets.only(right: Adapt.px(90)),
          child: new Text(
            state.weeknumber,
            style: TextStyle(
                color: Color(0xff333333),
                fontSize: Adapt.px(34)
            ),
          ),
        ),
        new Container(
          alignment: Alignment.center,
          width: Adapt.px(84),
          child: new Text(
            state.sumnumber,
            style: TextStyle(
                color: Color(0xff333333),
                fontSize: Adapt.px(34)
            ),
          ),
        )
      ],
    ),
  );
}
