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
    child: new Row(
      children: <Widget>[
        new Image.asset(
          state.commpanyicon,
          width: Adapt.px(90),
          height: Adapt.px(90),
        ),
        new Container(
          margin: EdgeInsets.only(left: Adapt.px(28)),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(state.messagetitles.length, (index){
              return _messagecell(state.messagetitles[index]);
            })
          ),
        )
      ],
    ),
    decoration: BoxDecoration(
        color: Colors.white,
      border: Border(
              top: BorderSide(
              color: Color(0xfff5f5f5), 
              width: Adapt.px(10)
          ),
          bottom: BorderSide(
              color: Color(0xfff5f5f5),
              width: Adapt.px(10)
          )
      )
    ),
  );
}
Widget _messagecell(String title){
  return Text(
    title,
    style: TextStyle(
        color: Color(0xff666666),
        fontSize: Adapt.px(24)
    ),
  );
}
