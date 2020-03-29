import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(SearchBarState state, Dispatch dispatch, ViewService viewService) {
  return new Container(
    decoration: BoxDecoration(
        color: Color(0xffF4F5F6),
        borderRadius: BorderRadius.circular(Adapt.px(28))
    ),
    height: Adapt.px(56),
    padding: EdgeInsets.only(left: Adapt.px(15),right: Adapt.px(15)),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        new Image.asset(
          state.searchicon,
          width: Adapt.px(25),
          height: Adapt.px(25),
        ),
        new Expanded(
          child: Container(
            padding: EdgeInsets.only(left: Adapt.px(15)),
            child: TextField(
              decoration: InputDecoration(
                  hintText: state.searchtitle,
                  hintStyle: TextStyle(
                      color: Color(0xff9F9F9F),
                      fontSize: Adapt.px(24)
                  ),
                  focusedBorder: InputBorder.none,
                  disabledBorder:InputBorder.none,
                  enabledBorder:InputBorder.none,
                  contentPadding:EdgeInsets.only(bottom: Adapt.px(25))
              ),
            ),
          ) ,
        ),
        new Image.asset(
          state.closeicon,
          width: Adapt.px(25),
          height: Adapt.px(25),
        )
      ],
    ),
  );
}
