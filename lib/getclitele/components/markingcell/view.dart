import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(MarkingCellState state, Dispatch dispatch, ViewService viewService) {
  return new Container(
    padding: EdgeInsets.fromLTRB(Adapt.px(35), Adapt.px(18), Adapt.px(35), Adapt.px(18)),
    child: new Row(
      children: <Widget>[
        new Image.asset(
          state.markingname,
          width: Adapt.px(92),
          height: Adapt.px(92),
          fit: BoxFit.fill,
        ),
        new Expanded(
            child: new Column(
                children: List.generate(state.markinglist.length, (index){
                  return markingsubwidget(state.markinglist[index]);
                })
            )
        ),
        new Image.asset(
          state.arrow_name,
          width: Adapt.px(16),
          height: Adapt.px(26),
        )
      ],
    ),
    decoration: BoxDecoration(
        border: Border(top: BorderSide(
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
Widget markingsubwidget(Map<String,dynamic> data){
  return new Container(
    margin: EdgeInsets.only(left: Adapt.px(20)),
    child: new Row(
      children: <Widget>[
        new Expanded(
            child: new RichText(
                text: new TextSpan(
                    text: '• ',
                    style: new TextStyle(
                        color: Color(0xffF36E27),
                        fontSize: Adapt.px(18)
                    ),
                    children: [
                      new TextSpan(
                        text: data['title'],
                        style: new TextStyle(
                            color: Color(0xff333333),
                            fontSize: Adapt.px(24)
                        ),
                      )
                    ]
                )
            )

        ),
        new Container(
          margin: EdgeInsets.only(right: Adapt.px(20),left: Adapt.px(50)),
          child: new Text(
            data['date'],
            style: new TextStyle(
                color: Color(0xffB2B2B2),
                fontSize: Adapt.px(24)
            ),
          ),
        )
      ],
    ),
  );
}