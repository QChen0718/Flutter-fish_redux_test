import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(NumbercellState state, Dispatch dispatch, ViewService viewService) {
  return new Container(
    color: Colors.white,
//    margin: EdgeInsets.only(top: Adapt.px(298)),
    padding: EdgeInsets.only(left: Adapt.px(30),right: Adapt.px(30)),
    height: Adapt.px(186),
    child: new Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: _items(state),
    ),
  );
}
_items(NumbercellState state){
  List<Widget> items=[];
  for(int i=0; i<state.infos.length;i++)
  {
    items.add(_item(state.numbers[i], state.infos[i]));
  }
  return items;
}
_item(String number,String info){
  return Container(
    margin: EdgeInsets.only(bottom: Adapt.px(10)),
    child: new Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        new Text(
          number,
          style: TextStyle(
              color: Color(0xff333333),
              fontSize: Adapt.px(34)
          ),
        ),
        new Container(
          margin: EdgeInsets.only(top: Adapt.px(10)),
          child: new Text(
            info,
            style: TextStyle(
                color: Color(0xff999999),
                fontSize: Adapt.px(22)
            ),
          ),
        )
      ],
    ),
  );
}