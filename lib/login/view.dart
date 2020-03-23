import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';
import '../actions/adapt.dart';
import 'action.dart';
import 'state.dart';

Widget buildView(LoginState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    body: Stack(
      children: <Widget>[
        new Image.asset(
          state.backimagename,
          width: Adapt.screenW(),
          height: Adapt.screenH(),
          fit: BoxFit.fill,
        ),
        Container(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Container(
                  margin: EdgeInsets.only(top: Adapt.px(172),bottom: Adapt.px(93)),
                  child: new Image.asset(
                    state.logoimagename,
                    width: Adapt.px(200),
                    height: Adapt.px(200),
                  ),
                ),
                new Container(
                  child: new Stack(
                    children: <Widget>[
                      new Center(
                        child: new Image.asset(
                          state.login_input_bgimagename,
                          fit: BoxFit.fill,
                        ),
                      ),
                      new Column(
                        children: <Widget>[
                          new Container(
                            margin: EdgeInsets.all(36),
                            height: Adapt.px(60),
                            decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: Color(0xffD8D8D8),width: 0.5))
                            ),
                            child: new Row(
                              children: <Widget>[
                                new Image.asset(
                                  state.phone_icon,
                                  width: Adapt.px(30),
                                  height: Adapt.px(42),
                                ),
                                new Expanded(
                                    child: new TextField(
                                      decoration: InputDecoration(
                                        hintText: state.phone_placehold,
                                        hintStyle: new TextStyle(
                                            fontSize: Adapt.px(34),
                                            color: Color(0xffC8C8C8)
                                        ),
                                        focusedBorder:InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                      ),
                                      controller: state.textEditingController,
                                      style: new TextStyle(
                                          color: Color(0xff333333),
                                          fontSize: Adapt.px(34)
                                      ),
                                    )
                                ),

                              ],
                            ),
                          ),
                          new Container(
                            margin: EdgeInsets.all(36),
                            height: Adapt.px(60),
                            decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: Color(0xffD8D8D8),width: 0.5))
                            ),
                            child: new Row(
                              children: <Widget>[
                                new Image.asset(
                                  state.password_icon,
                                  width: Adapt.px(30),
                                  height: Adapt.px(42),
                                ),
                                new Expanded(
                                    child: TextField(
                                  decoration: InputDecoration(
                                      hintText: state.password_placehold,
                                      hintStyle: new TextStyle(
                                          fontSize: Adapt.px(34),
                                          color: Color(0xffC8C8C8)
                                      ),
                                      focusedBorder:InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none
                                  ),
                                  controller: state.textEditingController,
                                  style: new TextStyle(
                                      color: Color(0xff333333),
                                      fontSize: Adapt.px(34)
                                  ),
                                ))
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
        )
      ],
    ),
  );
}
