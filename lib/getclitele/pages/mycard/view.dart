import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/navbar.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';
import 'action.dart';
import 'state.dart';

Widget buildView(MyCardState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    backgroundColor: Color(0xfff5f5f5),
    body: new Column(
      children: <Widget>[
        new NavBar(
          titleStr: '我的名片',
        ),
        new Stack(
          children: <Widget>[
            new Container(
              margin: EdgeInsets.only(left: Adapt.px(35),right: Adapt.px(35)),
              height: Adapt.px(743),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:BorderRadius.circular(Adapt.px(17)),
//                设置阴影
                boxShadow: [
                  BoxShadow(
//              阴影位置由offset决定,阴影模糊层度由blurRadius大小决定（大就更透明更扩散），阴影模糊大小由spreadRadius决定
                    color: Color(0xff727272).withAlpha(50),offset: Offset(2.0, 2.0),blurRadius: 3.0,spreadRadius: 2.0
                  )
                ]
              ),
            ),
            new Container(
              color: Colors.red,
              margin: EdgeInsets.only(left: Adapt.px(35),right: Adapt.px(35),top: Adapt.px(468)),
              height: Adapt.px(275),
              child: new Stack(
                children: <Widget>[
                  new Image.asset(
                    '',
                    
                  ),
                  new Column(
                    children: <Widget>[
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Text(
                            'C',
                            style: new TextStyle(
                                color: Color(0xffFCDFBB),
                                fontSize: Adapt.px(48)
                            ),
                          ),
                          new Container(
                            margin: EdgeInsets.only(left: Adapt.px(10),right: Adapt.px(80)),
                            child: new Text(
                              '高级理财经理',
                              style: new TextStyle(
                                  color: Color(0xff9C9C9C),
                                  fontSize: Adapt.px(28)
                              ),
                            ),
                          ),
                          new Container(
                            child: new Image.asset(
                              '',
                              width: Adapt.px(67),
                              height: Adapt.px(67),
                            ),
                          )
                        ],
                      ),
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Column(
                            children: <Widget>[
                              new Text(
                                '12',
                                style: new TextStyle(
                                  color: Color(0xffFCDFBB),
                                  fontSize: Adapt.px(58)
                                ),
                              ),
                              new Container(
                                child: new Text(
                                  '服务客户(位)',
                                  style: new TextStyle(
                                    color: Color(0xff9C9C9C),
                                    fontSize: Adapt.px(24)
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        new Container(
          child: new Row(
            children: <Widget>[
              new RaisedButton(
                  onPressed: (){

                  },
                  child: new Text(
                    '编辑名片',
                    style: new TextStyle(

                    ),

                  ),
              )
            ],
          ),
        )
      ],
    ),
  );
}
