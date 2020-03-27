import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(MenucellState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    padding: EdgeInsets.all(Adapt.px(24)),
    width: Adapt.screenW(),
    child: new Wrap(
      runSpacing: Adapt.px(24),
      children: List.generate(state.menuitems.length, (index){
        return _menuitem(state.menuitems[index]);
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
Widget _menuitem(Map<String,dynamic> itemdata){
  return new Container(
    width: Adapt.px(175),
    child: new Column(
      children: <Widget>[
        new Image.asset(
          itemdata['iconname'],
          width: Adapt.px(80),
          height: Adapt.px(80),
        ),
        new Container(
          margin: EdgeInsets.only(top: Adapt.px(15)),
          child: new Text(
            itemdata['title'],
            style: new TextStyle(
                color: Color(0xff333333),
                fontSize: Adapt.px(24)
            ),
          ),
        )
      ],
    ),
  );
}