import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(UsersetState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    backgroundColor: Color(0xfff5f5f5),
    appBar: new AppBar(
      title: new Text(
        state.title,
        style: new TextStyle(
          color: Color(0xff333333),
          fontSize: Adapt.px(34)
        ),
      ),
    ),
    body: new ListView.builder(
        itemCount: viewService.buildAdapter().itemCount,
        itemBuilder: viewService.buildAdapter().itemBuilder
    ),
  );
}
