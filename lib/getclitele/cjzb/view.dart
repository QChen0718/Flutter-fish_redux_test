import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(CjzbState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    body: new Center(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Text(
              '财经早报'
          ),
          new RaisedButton(
            onPressed: (){
              dispatch(CjzbActionCreator.onJumpDetail());
            },
            child: new Text(
                '跳转到详情'
            ),
          )
        ],
      ),
    ),
  );
}
