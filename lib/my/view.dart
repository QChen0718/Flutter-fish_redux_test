import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';
import 'package:flutter_fish_redux_router_qt/actions/navbar.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(MyState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
      backgroundColor: Colors.transparent,
      body:
          new Stack(
            children: <Widget>[
              new MediaQuery.removePadding(
                removeTop: true,
                context: viewService.context,
                child: new ListView.builder(
                    itemCount: 9,
                    itemBuilder: (ctx,index){
                      switch (index){
                        case 0:
                          return viewService.buildComponent('numbercell');
                          break;
                        case 1:
                          return viewService.buildComponent('pushcell');
                          break;
                        case 2:
                          return viewService.buildComponent('ordercell');
                          break;
                        case 3:
                          return viewService.buildComponent('menucell');
                          break;
                        default:
                          state.nomalcellState = state.nomalcells[index-4];
                          return viewService.buildComponent('nomalcell');
                          break;
                      }
                    }
                ),

              ),
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
               new NavBar(
                 titleStr: state.navtitle,
                 titleColor: Colors.white,
                 backgroundColor: Colors.transparent,
                 isHiddenLeftIcon: true,
                 isshowBottomlien: false,
                 rightIcons: <Widget>[
                  new GestureDetector(
                    child: new Container(
                      margin: EdgeInsets.only(right: Adapt.px(30)),
                      child: Image.asset(state.rightmessage,width: Adapt.px(58),height: Adapt.px(58),),
                    ),
                  ),
                  new GestureDetector(
                    onTap: (){
                      dispatch(MyActionCreator.onJumpSetpage());
                    },
                    child: new Container(
                      margin: EdgeInsets.only(right: Adapt.px(30)),
                      child: Image.asset(state.rightset,width: Adapt.px(58),height: Adapt.px(58),),
                    ),
                  )
                ],),
               viewService.buildComponent('headerview')
            ]
      ),
  );
}

