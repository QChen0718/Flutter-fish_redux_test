import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';
import 'package:flutter_fish_redux_router_qt/actions/loadingview.dart';
import 'package:flutter_fish_redux_router_qt/actions/navbar.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(ForwardingZSState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    backgroundColor: Colors.white,
    body: new Column(
      children: <Widget>[
        new NavBar(
          titleStr: state.navtitle,
          rightIcons: <Widget>[
            new GestureDetector(
              onTap: (){
                showDialog(
                    context: viewService.context,
                   barrierDismissible: false,
                  builder: (BuildContext context) {
                      return LoadingView(
                        wxurl: '',
                      );
                  }
                );
              },
              child: new Container(
                margin: EdgeInsets.only(right: Adapt.px(40)),
                child: new Text(
                  '历史分享',
                  style: new TextStyle(
                      color: Color(0xffFF6633),
                      fontSize: Adapt.px(33)
                  ),
                ),
              ),
            )
          ],
        ),
        viewService.buildComponent('forwardingheader'),
        Expanded(
          child: viewService.buildComponent('forwardingcontent'),
        )

      ],
    ),
  );
}
