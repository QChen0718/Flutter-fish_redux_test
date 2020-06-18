
import 'package:date_format/date_format.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';
import 'package:flutter_fish_redux_router_qt/actions/navbar.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(CustomerState state, Dispatch dispatch, ViewService viewService) {

  return Scaffold(
    backgroundColor: Colors.white,
    body: new Column(
      children: <Widget>[
        NavBar(
              leftIcon: Image.asset(
                state.lefticonname,
                width: Adapt.px(35),
                height: Adapt.px(35),),
              titleStr: state.navtitle,
              rightIcons: <Widget>[
                _righticon(state.righticonname)
              ],
//            rightIcons: _righticons(),
              leftButtonClick: _leftBtnClick
          ),
        new Container(
          margin: EdgeInsets.fromLTRB(Adapt.px(25), Adapt.px(32), Adapt.px(25), Adapt.px(32)),
          child: viewService.buildComponent('searchbar'),
        ),
        new Expanded(
            child: new Stack(
              children: <Widget>[
                new Container(
                    margin: EdgeInsets.only(top: Adapt.px(130)),
                    child:new MediaQuery.removePadding(
                        removeTop: true,
                        context: viewService.context,
                        child: ListView.builder(
                            itemCount: viewService.buildAdapter().itemCount,
                            itemBuilder: viewService.buildAdapter().itemBuilder
                        )
                    )
                ),
                new Container(
                  width: Adapt.screenW(),
                  height: Adapt.px(60),
                  margin: EdgeInsets.fromLTRB(Adapt.px(25), Adapt.px(84), Adapt.px(25), Adapt.px(10)),
                  child: new Container(
                    padding: EdgeInsets.only(bottom: Adapt.px(10)),
                    child: new Text(
                      state.totalcountstr,
                      style: TextStyle(
                          color: Color(0xff999999),
                          fontSize: Adapt.px(24)
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                          bottom: BorderSide(width: 1,color: Color(0xffC7C6C6))
                      )
                  ),
                ),

                viewService.buildComponent('filter'),
              ],
            )
        ),
      ],
    ),
  );
}

Widget _righticon(String content){
  return GestureDetector(
    onTap: (){

    },
    child: new Container(
      margin: EdgeInsets.only(right: Adapt.px(36)),
      child: Image.asset(
        content,
        width: Adapt.px(35),
        height: Adapt.px(35),
      ),
    ),
  );
}
void _leftBtnClick(){
  print('跳转到消息列表');
}