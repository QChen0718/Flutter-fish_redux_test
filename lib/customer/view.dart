import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(CustomerState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: new AppBar(
      title: new Text(
        '客户'
      ),
    ),
    body: new Center(
      child: new Text(
          '客户'
      ),
    ),
  );
}
