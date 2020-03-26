import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(PushMessageState state, Dispatch dispatch, ViewService viewService) {
  return new Container(
    margin: EdgeInsets.only(top: Adapt.px(10)),
    padding: EdgeInsets.fromLTRB(Adapt.px(24), Adapt.px(12), Adapt.px(24), Adapt.px(12)),
    height: Adapt.px(114),
    color: Colors.white,
    child: new Row(
      children: <Widget>[
        new Image.asset(
          'images/company_icon.webp',
          width: Adapt.px(90),
          height: Adapt.px(90),
        ),
        new Container(
          margin: EdgeInsets.only(left: Adapt.px(28)),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                '【交易作废】您提交的报单  国企信托-青白…',
                style: TextStyle(
                    color: Color(0xff666666),
                    fontSize: Adapt.px(24)
                ),
              ),
              new Text(
                '【交易作废】您提交的报单  国企信托-青白…',
                style: TextStyle(
                    color: Color(0xff666666),
                    fontSize: Adapt.px(24)
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
