import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';
import 'package:flutter_fish_redux_router_qt/actions/navbar.dart';
import 'state.dart';

Widget buildView(VideoDetailState state, Dispatch dispatch, ViewService viewService) {

  return Scaffold(
    body: new Column(
      children: <Widget>[
        Offstage(
          offstage: state.isFullScreen,
          child: new NavBar(
            titleStr: state.navtitle,
          ),
        ),
        viewService.buildComponent('myvideo'),
        new Offstage(
          offstage: state.isFullScreen,
          child: new Container(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  margin: EdgeInsets.only(left: Adapt.px(34),top: Adapt.px(15),bottom: Adapt.px(15)),
                  child: new Text(
                    '阳光私募缘何阳光',
                    style: new TextStyle(
                      color: Color(0xff333333),
                      fontSize: Adapt.px(34),
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                new Container(
                  margin: EdgeInsets.only(left: Adapt.px(34),bottom: Adapt.px(30)),
                  child: new Row(
                    children: <Widget>[
                      new Container(
                        child: new Text(
                          '演讲嘉宾：范舫妤',
                          style: new TextStyle(
                              color: Color(0xff999999),
                              fontSize: Adapt.px(24)
                          ),
                        ),
                      ),
                      new Container(
                        margin: EdgeInsets.only(left:  Adapt.px(40)),
                        child: new Text(
                          '时间：2018-04-03',
                          style: new TextStyle(
                              color: Color(0xff999999),
                              fontSize: Adapt.px(24)
                          ),
                        ),
                      )
                    ],
                  ),
                )
                
              ],
            ),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color(0xffECECEC),
                  width: Adapt.px(10)
                )
              )
            ),
          ),

        ),
        new Offstage(
          offstage: state.isFullScreen,
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                margin: EdgeInsets.only(left: Adapt.px(34),top: Adapt.px(30)),
                child: new Text(
                  '视频简介',
                  style: new TextStyle(
                    color: Color(0xff333333),
                    fontSize: Adapt.px(34),
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
               new Container(
                    margin: EdgeInsets.only(left: Adapt.px(34),right: Adapt.px(34),bottom: Adapt.px(34),top: Adapt.px(34)),
                    child: new Text(
                      '随着我国资本市场的快速发展，阳光私募已经成为资本市场的一股力量，'
                          '它丰富了社会资金的投资渠道，给我国资本市场注入了新鲜血液。'
                          '那到底什么是阳光私募呢，尤其是阳光是什么意思？',
                      style: new TextStyle(
                          color: Color(0xff666666),
                          fontSize: Adapt.px(30),

                      ),

                    ),
                  ),
              
            ],
          ),
        )
      ],
    ),
    bottomSheet: Offstage(
      offstage: state.isFullScreen,
      child: new Container(
        margin: EdgeInsets.only(bottom: Adapt.padBotH()),
        child: new SizedBox(
          width: Adapt.screenW(),
          height: Adapt.px(80),

          child: new MaterialButton(
            color: Color(0xffFF6633),
            onPressed: (){

            },
            child: new Center(
              child: new Text(
                '转发获客',
                style: new TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: Adapt.px(34)
                ),
              ),
            ),
          ),
        ),
      ),
    )
  );
}
