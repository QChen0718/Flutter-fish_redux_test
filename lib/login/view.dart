import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';
import '../actions/adapt.dart';
import 'action.dart';
import 'state.dart';

Widget buildView(LoginState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
//    解决键盘谈起时页面会上下移动的问题
    resizeToAvoidBottomInset: false,
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
                          width: Adapt.px(655),
                          height: Adapt.px(472),
                          fit: BoxFit.fill,
                        ),
                      ),
                      new Column(
                        children: <Widget>[
                          new Container(
                            margin: EdgeInsets.only(left: Adapt.px(84),right: Adapt.px(84),top: Adapt.px(30)),
                            height: Adapt.px(104),
                            decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: Color(0xffD8D8D8),width: 0.5))
                            ),
                            child: new Row(
                              children: <Widget>[
                                new Container(
                                  margin: EdgeInsets.only(right: Adapt.px(30)),
                                  child: new Image.asset(
                                    state.phone_icon,
                                    width: Adapt.px(30),
                                    height: Adapt.px(42),
                                  ),
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
                                      controller: state.phone_textEditingController,
                                      style: new TextStyle(
                                          color: Color(0xff333333),
                                          fontSize: Adapt.px(34)
                                      ),
                                      keyboardType: TextInputType.phone,
                                    )
                                ),

                              ],
                            ),
                          ),
                          new Container(
                            margin: EdgeInsets.only(left: Adapt.px(84),right: Adapt.px(84)),
                            height: Adapt.px(104),
                            decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: Color(0xffD8D8D8),width: 0.5))
                            ),
                            child: new Row(
                              children: <Widget>[
                                new Container(
                                  margin: EdgeInsets.only(right: Adapt.px(30)),
                                  child: new Image.asset(
                                    state.password_icon,
                                    width: Adapt.px(30),
                                    height: Adapt.px(42),
                                  ),
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
                                  controller: state.password_textEditingController,
                                  style: new TextStyle(
                                      color: Color(0xff333333),
                                      fontSize: Adapt.px(34)
                                  ),
                                      keyboardType: TextInputType.visiblePassword,
//                                      设置已密文展示
                                      obscureText: true,
                                )),
                                new Container(
                                  child: new GestureDetector(
                                    onTap: (){
                                      dispatch(LoginActionCreator.onUpdate());
                                    },
                                    child: new Image.asset(
                                      state.isshow?state.eyeopenimagename:state.eyecloseimagename,
                                      width: Adapt.px(32),
                                      height: Adapt.px(28),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          new Container(
                            margin: EdgeInsets.only(top: Adapt.px(96)),
                            child: new GestureDetector(
                              onTap: (){
                                dispatch(LoginActionCreator.onJumpHome());
                              },
                              child: new Image.asset(
                                state.loginbtnimagename,
                                width: Adapt.px(98),
                                height: Adapt.px(98),
                              ),
                            ),
                          )
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
