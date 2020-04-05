import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(HotFinancialWordeCellState state, Dispatch dispatch, ViewService viewService) {
  return new GestureDetector(
    onTap: (){
      dispatch(HotFinancialWordeCellActionCreator.onJumpPosterDetail());
    },
    child: Container(
      child: new Column(
        children: <Widget>[
          new Image.asset(
            state.posterphoto,
            width: Adapt.px(211),
            height: Adapt.px(376),
            fit: BoxFit.fill,
          ),
          new Container(
            margin: EdgeInsets.only(top: Adapt.px(8)),
            child: new Text(
              state.postername,
              style: new TextStyle(
                  color: Color(0xff333333),
                  fontSize: Adapt.px(28)
              ),
            ),
          )
        ],
      ),
    ),
  );
}
