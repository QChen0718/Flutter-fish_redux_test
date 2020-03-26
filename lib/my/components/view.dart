import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(HeaderviewState state, Dispatch dispatch, ViewService viewService) {
  return new Container(
    margin: EdgeInsets.only(left:Adapt.px(55), top:Adapt.px(182), right: Adapt.px(55)),
    height: Adapt.px(184),
    child: Stack(
      children: <Widget>[
        new Image.asset(
          state.headerbgimagename,
          width: Adapt.px(640),
          height: Adapt.px(184),
        ),
        new Padding(
          padding: EdgeInsets.fromLTRB(Adapt.px(57), Adapt.px(30), Adapt.px(57), Adapt.px(30)),
          child: new Row(
            children: <Widget>[
              new Stack(
                alignment: Alignment.bottomRight,
                children: <Widget>[
                  new CircleAvatar(
                    radius: Adapt.px(64),
                    backgroundImage: new AssetImage(state.headerphotoname),
                    backgroundColor: Colors.transparent,
                  ),
                  new Image.asset(
                    state.viplevelicon,
                    width: Adapt.px(39),
                    height: Adapt.px(39),
                  )
                ],
              ),
              new Container(
                margin: EdgeInsets.only(left: Adapt.px(20)),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text(
                      state.username,
                      style: TextStyle(
                          fontSize: Adapt.px(48),
                          color: Color(0xff725000),
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    new Wrap(
                      spacing: Adapt.px(24),
                      children: <Widget>[
                        new Container(
                          alignment: Alignment.center,
                          height: Adapt.px(38),
                          padding: EdgeInsets.only(left: Adapt.px(20),right: Adapt.px(20)),
                          decoration: BoxDecoration(
                              color: Color(0xff977A32),
                              borderRadius: BorderRadius.circular(Adapt.px(17))
                          ),
                          child: new Text(
                            '会员特权',
                            style: TextStyle(
                                fontSize: Adapt.px(26),
                                color: Color(0xffF2D89C)
                            ),
                          ),
                        ),
                        new Container(
                          alignment: Alignment.center,
                          height: Adapt.px(38),
                          padding: EdgeInsets.only(left: Adapt.px(20),right: Adapt.px(20)),
                          decoration: BoxDecoration(
                              color: Color(0xff977A32),
                              borderRadius: BorderRadius.circular(Adapt.px(17))
                          ),
                          child: new Text(
                            '员工号',
                            style: TextStyle(
                                fontSize: Adapt.px(26),
                                color: Color(0xffF2D89C)
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}
