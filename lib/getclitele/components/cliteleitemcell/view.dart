import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(CliteleItemCellState state, Dispatch dispatch, ViewService viewService) {
  return new Container(
    margin: EdgeInsets.only(left: Adapt.px(20),top: Adapt.px(40)),
    child: new Wrap(
      spacing: Adapt.px(110),
      runSpacing: Adapt.px(30),
      children: List.generate(state.items.length, (index){
        return items(state.items[index]);
      }),
    ),
  );
}
Widget items(Map<String,dynamic>itemdata){
  return Container(
    width: Adapt.px(150),
    child: new Column(
      children: <Widget>[
        new Image.asset(
          itemdata['imagename'],
          width: Adapt.px(75),
          height: Adapt.px(75),
        ),
        new Container(
          padding: EdgeInsets.only(top: Adapt.px(15)),
          child: new Text(
            itemdata['title'],
            style: new TextStyle(
                color: Color(0xff333333),
                fontSize: Adapt.px(28)
            ),
          ),
        )
      ],
    ),
  );
}