import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(AddCustomerCellState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    height: Adapt.px(100),
    margin: EdgeInsets.only(left: Adapt.px(30),right: Adapt.px(30)),
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Color(0xffC7C6C6),
          width: Adapt.px(1)
        )
      )
    ),
    child: new Row(
      children: <Widget>[
        new Container(
          child: new Text(
            state.addcustomerTitle,
            style: new TextStyle(
              color: Color(0xffB2B2B2),
              fontSize: Adapt.px(32)
            ),
          ),
        ),
        new Expanded(
            child: new Container(
              height: Adapt.px(100),
              child: new TextField(
                textAlign: TextAlign.end,
                decoration: InputDecoration(
                    hintText: state.placeholder,
                    errorBorder: InputBorder.none,
                    focusedBorder:InputBorder.none,
                    focusedErrorBorder:InputBorder.none,
                    disabledBorder:InputBorder.none,
                    enabledBorder:InputBorder.none
                ),
              ),
            )
        )
      ],
    ),
  );
}
