import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(StaticsSectionState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    margin: EdgeInsets.only(top: Adapt.px(10)),
    child: new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Container(
          padding: EdgeInsets.all(Adapt.px(30)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new Container(
                margin: EdgeInsets.only(right: Adapt.px(10)),
                color: Color(0xffFF6633),
                height: Adapt.px(22),
                width: Adapt.px(6),
              ),
              new Text(
                state.sectionstr,
                style: TextStyle(
                    color: Color(0xff333333),
                    fontSize: Adapt.px(32)
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: Adapt.px(1),color: Color(0xffC7C6C6))
              )
          ),
        ),
        new Container(
          padding: EdgeInsets.all(15),
          child: new Row(
            children: <Widget>[
              new Expanded(
                child: Container(
                    padding: EdgeInsets.only(left: Adapt.px(50)),
                    child: new Text(
                      state.usertitle,
                      style: TextStyle(
                          fontSize: Adapt.px(28),
                          color: Color(0xff999999)
                      ),
                    )
                ),
              ),
              new Container(
                margin: EdgeInsets.only(right: Adapt.px(100)),
                child: new Text(
                  state.weeknumber,
                  style: TextStyle(
                      fontSize: Adapt.px(28),
                      color: Color(0xff999999)
                  ),
                ),
              ),
              new Container(
                margin: EdgeInsets.only(right: Adapt.px(20)),
                child: new Text(
                  state.sumnumber,
                  style: TextStyle(
                      fontSize: Adapt.px(28),
                      color: Color(0xff999999)
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
