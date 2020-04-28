import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';
import 'package:flutter_fish_redux_router_qt/actions/navbar.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(NotePostState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    backgroundColor: Colors.white,
    body: new Column(
      children: <Widget>[
        new NavBar(
          titleStr: state.navtitle,
          rightIcons: <Widget>[
            new GestureDetector(
              onTap: (){

              },
              child: new Container(
                margin: EdgeInsets.only(right: Adapt.px(40)),
                child: new Text(
                  '新建',
                  style: new TextStyle(
                      color: Color(0xffFF6633),
                      fontSize: Adapt.px(33)
                  ),
                ),
              ),
            )
          ],
//          backgroundColor: Colors.blue,
        ),
        new Expanded(
            child:new MediaQuery.removePadding(
                removeTop: true,
                context: viewService.context,
                child: ListView.builder(
                  itemBuilder: viewService.buildAdapter().itemBuilder,
                  itemCount: viewService.buildAdapter().itemCount,
                )
            )
        ),
      ],
    ),
  );
}
