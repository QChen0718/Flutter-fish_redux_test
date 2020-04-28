import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/navbar.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';
import 'package:flutter_fish_redux_router_qt/actions/sharepopview.dart';
import 'action.dart';
import 'state.dart';

Widget buildView(MyCardState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    backgroundColor: Color(0xfff5f5f5),
    body: new Column(
      children: <Widget>[
        new NavBar(
          titleStr: state.navtitle,
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
              margin: EdgeInsets.only(left: Adapt.px(35),right: Adapt.px(35),top: Adapt.px(468)),
              child: new Stack(
                children: <Widget>[
                  new Image.asset(
                    state.cardbgimagename,
                    height: Adapt.px(275),
                    fit: BoxFit.fill,
                  ),
                  new Column(
                    children: <Widget>[
                      new Container(
                        margin: EdgeInsets.only(top: Adapt.px(25),bottom: Adapt.px(25)),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Text(
                              state.username,
                              style: new TextStyle(
                                  color: Color(0xffFCDFBB),
                                  fontSize: Adapt.px(48)
                              ),
                            ),
                            new Container(
                              margin: EdgeInsets.only(left: Adapt.px(10),right: Adapt.px(80)),
                              child: new Text(
                                state.userposition,
                                style: new TextStyle(
                                    color: Color(0xff9C9C9C),
                                    fontSize: Adapt.px(28)
                                ),
                              ),
                            ),
                            new Container(
                              child: new Image.asset(
                                state.phonename,
                                width: Adapt.px(75),
                                height: Adapt.px(75),
                                fit: BoxFit.fill,
                              ),
                            )
                          ],
                        ),
                      ),
                      new Container(
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            _subwidget(state.userinfolist[0]),
                            new Container(
                              margin: EdgeInsets.only(left: Adapt.px(80),right: Adapt.px(80)),
                              color: Color(0xffD8D8D8),
                              height: Adapt.px(44),
                              width: 1,
                            ),
                            _subwidget(state.userinfolist[1])
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        new Container(
          margin: EdgeInsets.only(top: Adapt.px(40)),
          child: new Row(
            children: <Widget>[
              new MaterialButton(
                  onPressed: (){
                    dispatch(MyCardActionCreator.onAction(1));
                  },
                child: new Container(
                  child: new Stack(
                      alignment: AlignmentDirectional.center,
                      children: <Widget>[
                        new Image.asset(
                          state.editbtnbgimage,
                          width: Adapt.px(310),
                          height: Adapt.px(62),
                          fit: BoxFit.fill,
                        ),
                         new Text(
                            state.editbtntitle,
                            style: new TextStyle(
                                color: Color(0xffFCDFBB),
                                fontSize: Adapt.px(32)
                            ),
                        ),
                      ],
                    ),
                ),
              ),
              new MaterialButton(
                  onPressed: (){
//                    dispatch(MyCardActionCreator.onAction(2));
//                  从底部弹出视图
                    showModalBottomSheet(
                        context: viewService.context,
                        builder: (context){
                          return SharePopView();
                        }
                    );

                  },
                child: new Container(
                  width: Adapt.px(310),
                  height: Adapt.px(56),
                  child: new Center(
                    child: new Text(
                      state.sharebtntitle,
                      style: new TextStyle(
                        color: Color(0xff333333),
                        fontSize: Adapt.px(32)
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xff979797),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(Adapt.px(8))
                  ),
                ),
              )
            ],
          ),
        ),
        new Container(
          margin: EdgeInsets.all(Adapt.px(35)),
          child: new Row(
            children: <Widget>[
              new Expanded(
                  child: new Text(
                    state.detailstr,
                    style: new TextStyle(
                      color: Color(0xff7D7A7A),
                      fontSize: Adapt.px(24)
                    ),
                  )
              ),
              new Container(
                margin: EdgeInsets.only(left: Adapt.px(20)),
                child: new Row(
                  children: <Widget>[
                    new Image.asset(
                      state.lookicon,
                      width: Adapt.px(25),
                      height: Adapt.px(16),
                    ),
                    new Container(
                      margin: EdgeInsets.only(left: Adapt.px(10)),
                      child: new Text(
                        state.lookstr,
                        style: new TextStyle(
                            color: Color(0xff7D7A7A),
                            fontSize: Adapt.px(24)
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}

Widget _subwidget(Map<String,dynamic>data){
  return Column(
    children: <Widget>[
      new Text(
        data['number'],
        style: new TextStyle(
            color: Color(0xffFCDFBB),
            fontSize: Adapt.px(58)
        ),
      ),
      new Container(
        margin: EdgeInsets.only(top: Adapt.px(10)),
        child: new Text(
          data['desc'],
          style: new TextStyle(
              color: Color(0xff9C9C9C),
              fontSize: Adapt.px(24)
          ),
        ),
      )
    ],
  );
}
