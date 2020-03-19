import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(MyState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: new AppBar(
      title: new Text(
        '我的'
      ),
    ),
    body: new Center(
      child: new Text(
          '我的'
      ),
    ),
  );
}
