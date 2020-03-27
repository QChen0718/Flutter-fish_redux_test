import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(MyState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: <Widget>[
          new Stack(
            children: <Widget>[
              new Container(
                child: new Image.asset(
                  state.navbgimagename,
                  width: Adapt.screenW(),
                  height: Adapt.px(288),
                  fit: BoxFit.fill,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xfff5f5f5),
                      width: Adapt.px(10)
                    )
                  )
                ),
              ),
              new AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                title: new Text(state.navtitle,style: TextStyle(color: Colors.white),),
                actions: <Widget>[
                  new Container(
                    margin: EdgeInsets.only(right: Adapt.px(30)),
                    child: Image.asset(state.rightmessage,width: Adapt.px(58),height: Adapt.px(58),),
                  ) ,
                  new Container(
                    margin: EdgeInsets.only(right: Adapt.px(30)),
                    child: Image.asset(state.rightset,width: Adapt.px(58),height: Adapt.px(58),),
                  )
                ],
                centerTitle: true,
              ),
              viewService.buildComponent('numbercell'),
              viewService.buildComponent('headerview')
            ],
          ),
          viewService.buildComponent('pushcell'),
          viewService.buildComponent('ordercell'),
          viewService.buildComponent('menucell')
        ],
      )

  );
}
