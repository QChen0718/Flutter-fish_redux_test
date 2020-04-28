import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(ForWardingzsContentState state, Dispatch dispatch, ViewService viewService) {
  return ListView(
      children: <Widget>[
        new Image.asset(
          state.imagename,
          width: Adapt.screenW(),
          fit: BoxFit.fill,
        )
      ],
  );
}
