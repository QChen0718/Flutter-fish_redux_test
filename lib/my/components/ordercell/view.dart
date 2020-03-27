import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(OrdercellState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    padding: EdgeInsets.all(Adapt.px(25)),
    width: Adapt.screenW(),
    child: new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Container(
          margin: EdgeInsets.only(left: Adapt.px(4)),
              child: new Text(
                state.celltitle,
                style: new TextStyle(
                    color: Color(0xff333333),
                    fontSize: Adapt.px(34)
                ),
              )
        ),
        new Container(
          margin: EdgeInsets.only(top: Adapt.px(20)),
          child: new Wrap(
            spacing: Adapt.px(28),
            runSpacing: Adapt.px(28),
            children: List.generate(state.items.length, (index){
              return _orderitem(state.items[index]);
            }),
          ),
        )
      ],
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
Widget _orderitem(Map<String,dynamic> itemdata){
  return new Container(
    width: Adapt.px(114),
    child: new Column(
      children: <Widget>[
        new Image.asset(
          itemdata['iconname'],
          width: Adapt.px(44),
          height: Adapt.px(44),
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