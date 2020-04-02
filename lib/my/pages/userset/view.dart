import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';
import 'package:flutter_fish_redux_router_qt/actions/navbar.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(UsersetState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    backgroundColor: Color(0xfff5f5f5),
    body: new Column(
      children: <Widget>[
        new NavBar(
          titleStr: state.title,
          backgroundColor: Colors.white,
        ),
        Expanded(
            child: new MediaQuery.removePadding(
                removeTop: true,
                context: viewService.context,
                child: new ListView.builder(
                    itemCount: viewService.buildAdapter().itemCount,
                    itemBuilder: viewService.buildAdapter().itemBuilder
                )
            )
        )
      ],
    ),
  );
}
