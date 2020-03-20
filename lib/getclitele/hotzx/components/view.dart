//这块主要是呈现给用户看的视图

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
    HeaderState state, Dispatch dispatch, ViewService viewService) {
  return new Container(
    padding: EdgeInsets.all(Adapt.px(25)),
    child: new Row(
      children: <Widget>[
        new Container(
          margin: EdgeInsets.only(right: Adapt.px(25)),
          child: new Image.asset(
            state.coverimagename,
            width: Adapt.px(160),
            height: Adapt.px(106),
          ),
        ),
        new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
             new Container(
              child: new Text(
                state.celltitle,
                style: new TextStyle(
                    color: Color(0xff333333), fontSize: Adapt.px(32)),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            new Container(
              child: new Text(
                state.content,
                style: new TextStyle(
                    color: Color(0xff9B9B9B), fontSize: Adapt.px(24)),
              ),
            ),
            new Container(
              child: new Text(
                state.datetext,
                style: new TextStyle(
                    color: Color(0xff999999), fontSize: Adapt.px(22)),
              ),
            )
          ],
        ))
      ],
    ),
  );
}
