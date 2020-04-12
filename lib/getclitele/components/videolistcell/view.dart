import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(VideoListCellState state, Dispatch dispatch, ViewService viewService) {
  return new GestureDetector(
    onTap: (){
      dispatch(VideoListCellActionCreator.onAction());
    },
    child: Container(
      child: new Column(
        children: <Widget>[
          new Stack(
            children: <Widget>[
              new Image.network(
                state.coverimagename,
                width: Adapt.screenW(),
                height: Adapt.px(310),
              ),
              new Image.asset(
                'images/play_btn.webp',
                width: Adapt.px(84),
                height: Adapt.px(84),
              ),
            ],
            alignment: AlignmentDirectional.center,
          ),
          new Container(
            padding: EdgeInsets.fromLTRB(Adapt.px(30), Adapt.px(10), Adapt.px(30), Adapt.px(10)),
            child: new Row(
              children: <Widget>[
                new Expanded(
                    child: new Text(
                      state.videotitle,
                      style: new TextStyle(
                          color: Color(0xff333333),
                          fontSize: Adapt.px(32)
                      ),
                    )
                ),
                new Container(
                  child: new Text(
                    state.datestr,
                    style: new TextStyle(
                        color: Color(0xff666666),
                        fontSize: Adapt.px(22)
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
