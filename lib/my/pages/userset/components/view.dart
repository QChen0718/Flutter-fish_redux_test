import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';
import 'package:flutter_fish_redux_router_qt/actions/sputil.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(ItemState state, Dispatch dispatch, ViewService viewService) {
  return new GestureDetector(
    onTap: (){
      dispatch(ItemActionCreator.onCellClick());
    },
    child: Container(
      height: Adapt.px(90),
      padding: EdgeInsets.only(left: Adapt.px(30),right: Adapt.px(30)),
      child: state.celltype? new Row(
        children: <Widget>[
          new Expanded(
            child: new Container(
              child: new Text(
                state.celltitle,
                style: new TextStyle(
                    color: Color(0xff333333),
                    fontSize: Adapt.px(34)
                ),
              ),
            ),
          ),
          new Container(
            margin: EdgeInsets.only(right: 10),
            child: new Text(
              SpUtil.projectVersion,
            ),
          ),
          new Container(
            child: new Image.asset(
              state.cell_arrow,
              width: Adapt.px(16),
              height: Adapt.px(26),
            ),
          )
        ],
      ):new Center(
        child: new Text(
          state.celltitle,
          style: new TextStyle(
              color: Color(0xffFF6633),
              fontSize: Adapt.px(34)
          ),
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
              bottom: BorderSide(
                  color: Color(0xfff5f5f5),
                  width: Adapt.px(2)
              )
          )
      ),
    ),
  );
}
