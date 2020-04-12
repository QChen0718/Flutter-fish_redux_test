import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(TopShareCellState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    child: new Column(
      children: <Widget>[
        new Row(
          children: <Widget>[
            new Container(
              margin: EdgeInsets.only(left: Adapt.px(30),top: Adapt.px(20),bottom: Adapt.px(20)),
              child: new Image.network(
                  state.cavorimagename,
                  width: Adapt.px(170) ,
                  height: Adapt.px(109),
                fit: BoxFit.fill,
              ),
            ),
            new Container(
              margin: EdgeInsets.only(left: Adapt.px(40)),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(state.toptitle,style: TextStyle(
                      color: Color(0xff333333),
                      fontSize: Adapt.px(28)
                  ),),
                  new Text(state.topcontent,style: TextStyle(
                      color: Color(0xff999999),
                      fontSize: Adapt.px(24)
                  ),)
                ],
              ),
            )
          ],
        ),
        new Container(
          color: Color(0xffC7C6C6),
          height: Adapt.px(1),
          margin: EdgeInsets.only(left: Adapt.px(15),right: Adapt.px(15)),
        )
      ],
    ),
  );
}
