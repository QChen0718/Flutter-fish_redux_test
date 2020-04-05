import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(StaticsHeaderState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    padding: EdgeInsets.all(Adapt.px(30)),
    child: new Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(state.listdata.length, (index){
        return _item(state.listdata[index]);
      }),
    ),
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Color(0xfff5f5f5),
          width: Adapt.px(10)
        )
      )
    ),
  );
}
_item(Map<String,dynamic> data){
  return new Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      new Text(
        data['number'],
        style: TextStyle(
            fontSize: Adapt.px(34),
            color: Color(0xff333333)
        ),
      ),
      new Container(
        padding: EdgeInsets.only(top: Adapt.px(10)),
        child: new Text(
          data['title'],
          style: TextStyle(
              fontSize: Adapt.px(24),
              color: Color(0xff999999)
          ),
        ),
      )
    ],
  );
}