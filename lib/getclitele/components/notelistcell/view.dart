import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(NoteListCellState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    margin: EdgeInsets.only(left:Adapt.px(29), top:Adapt.px(18), right:Adapt.px(29),),
    height: Adapt.px(131),
    child: new Container(
      margin: EdgeInsets.all(Adapt.px(20)),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
            margin: EdgeInsets.only(bottom: Adapt.px(4)),
            child: new Row(
              children: <Widget>[
                new Container(
                  child: new Image.asset(
                    'images/timer_icon.webp',
                    width: Adapt.px(24),
                    height: Adapt.px(24),
                  ),
                ),
                new Expanded(
                    child: new Container(
                      margin: EdgeInsets.only(left: Adapt.px(10)),
                      child: new Text(
                        '10月22日 17:07',
                        style: new TextStyle(
                            color: Color(0xff999999),
                            fontSize: Adapt.px(24)
                        ),
                      ),
                    )
                )
              ],
            ),
          ),
          new Container(
            child: new Text(
              '哈哈哈哈哈哈哈哈哈哈',
              style: new TextStyle(
                  color: Color(0xff333333),
                  fontSize: Adapt.px(30)
              ),
            ),
          )
        ],
      ),
    ),
    decoration: BoxDecoration(
      border: Border.all(
        color: Color(0xffE0E0E0),
        width: 1
      )
    ),
  );
}
