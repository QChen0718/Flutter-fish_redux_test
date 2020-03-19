//这块主要是呈现给用户看的视图

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(HeaderState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    body: new Column(
      children: <Widget>[
        new Text(
          state.content,
          style: state.showHeaderMovie == true ? new TextStyle(
            color: Colors.red
          ):new TextStyle(
            color: Colors.yellow
          ),
        )
      ],
    ),
  );
}
