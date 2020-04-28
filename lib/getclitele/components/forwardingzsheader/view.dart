import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(ForWardingzsHeaderState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    height: Adapt.px(397),
    width: Adapt.screenW(),
    padding: EdgeInsets.fromLTRB(Adapt.px(30), Adapt.px(10), Adapt.px(30), Adapt.px(10)),
    child: Column(
      children: <Widget>[
        new GestureDetector(
          onTap: (){
            dispatch(ForWardingzsHeaderActionCreator.onUpdate());
          },
          child: Container(
              margin: EdgeInsets.all(Adapt.px(22)),
              height: Adapt.px(191),
              width: Adapt.px(642),
              color: Color(0xffF5F5F9),
              child: state.isedict?new Container(
                margin: EdgeInsets.all(Adapt.px(30)),
                child: new TextField(
                  controller: state.textEditingController,
                  decoration: InputDecoration(
                      hintText: '请输入微信链接',
                      focusedBorder: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                  ),
                  maxLines: 4,
                  textInputAction: TextInputAction.done,
                  autofocus: true,
                  style: new TextStyle(
                    color: Color(0xff666666),
                    fontSize: Adapt.px(28)
                  ),
                ),
              ):Offstage(
                offstage: state.isedict,
                child: Column(
                  children: <Widget>[
                    new Container(
                      margin: EdgeInsets.only(top: Adapt.px(33)),
                      child: new Image.asset(
                        state.addurlname,
                        width: Adapt.px(73),
                        height: Adapt.px(73),
                      ),
                    ),
                    new Container(
                      margin: EdgeInsets.only(top: Adapt.px(20)),
                      child: new Text(
                        state.title,
                        style: new TextStyle(
                            color: Color(0xffB7B7B7),
                            fontSize: Adapt.px(28)
                        ),
                      ),
                    )
                  ],
                ),
              )
          ),
        ),
        new Container(
          height: Adapt.px(88),
          width: Adapt.px(640),
          child: new RaisedButton(
              onPressed: (){
//                收起键盘
                FocusScope.of(viewService.context).requestFocus(FocusNode());
              },
            child: new Text(
              state.btntitle,
              style: new TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: Adapt.px(34)
              ),
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Adapt.px(8)),
            color: Color(0xffC8C8C8)
          ),
        )
      ],
    ),
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border(
          bottom: BorderSide(
            color: Color(0xffF5F5F5),
            width: Adapt.px(10)
          )
      )
    ),
  );
}
