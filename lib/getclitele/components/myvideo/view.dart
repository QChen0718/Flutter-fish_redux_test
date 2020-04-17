import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(MyVideoState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    width: state.width,
    height: state.height,
    color: Colors.black,
    child: state.url!=null?Stack(
      children: <Widget>[],
    ):new Container(),
  );
}
