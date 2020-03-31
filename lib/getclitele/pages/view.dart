import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(NewGetCliteleState state, Dispatch dispatch, ViewService viewService) {
  return new Scaffold(
    appBar: new AppBar(
      title: new Text(
        state.navtitle,
        style: new TextStyle(
            color: Color(0xff333333),
          fontSize: Adapt.px(34)
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      actions: <Widget>[
        new GestureDetector(
          onTap: (){

          },
          child: Padding(
            padding: new EdgeInsets.only(right: 20),
            child: new Image.asset(
              state.navrightbtnname,
              width: Adapt.px(38),
              height: Adapt.px(33),
            ),
          ),
        ),
      ],
    ),
    body: new Container(
      color: Colors.white,
      child: new Column(
        children: <Widget>[
          new Stack(
            children: <Widget>[
              new Container(
                  margin: EdgeInsets.fromLTRB(Adapt.px(28), Adapt.px(20), Adapt.px(28), Adapt.px(20)),
                  child: new Image.asset(
                    state.numberbg,
                    width: Adapt.px(694),
                    height: Adapt.px(330),
                    fit: BoxFit.fill,
                  ),
              ),
              new Container(
                margin: EdgeInsets.fromLTRB(Adapt.px(48), Adapt.px(40), Adapt.px(48),Adapt.px(40)),
                height: Adapt.px(290),
                child: new Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Container(
                      margin: EdgeInsets.only(left: Adapt.px(42),right: Adapt.px(20)),
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Image.asset(
                            state.numbericon,
                            width: Adapt.px(96),
                            height: Adapt.px(96),
                          ),
                          new Padding(
                            padding: EdgeInsets.only(top: Adapt.px(10)),
                            child: new Text(
                              state.numbertext,
                              style:new TextStyle(color: Colors.white,fontSize: Adapt.px(34)
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    new Container(
                      width: Adapt.px(420),
                      child: new Wrap(
                          spacing: Adapt.px(10),
                          children: List.generate(state.numberslist.length, (index){
                            return subwidget(state.numberslist[index]);
                          })
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          new Stack(
            alignment: Alignment.centerRight,
            children: <Widget>[
              new Container(
                child: GestureDetector(
                  onTap: (){

                  },
                  child: marketingview(),
                ) ,
              ),
              new Positioned(
                right: 35,
                child: new Container(
                  margin: EdgeInsets.only(left: Adapt.px(50)),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      new Text(
                        '10-22 14:57',
                        style: new TextStyle(
                            fontSize: Adapt.px(24),
                            color: Color(0xFFB2B2B2)
                        ),
                      ),
                      new Text(
                        '10-22 14:57',
                        style: new TextStyle(
                            fontSize: Adapt.px(24),
                            color: Color(0xFFB2B2B2)
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              new Positioned(
                right: 15,
                child: new Image.asset(
                  'images/icon_arrow.webp',
                  width: Adapt.px(16),
                  height: Adapt.px(26),
                ),


              )
            ],
          ),
          new Container(
            margin: EdgeInsets.only(left: Adapt.px(20),top: Adapt.px(40)),
            child: new Wrap(
              spacing: Adapt.px(110),
              runSpacing: Adapt.px(30),
              children: List.generate(state.items.length, (index){
                return items(state.items[index]);
              }),
            ),
          )
        ],
      ),
    ),
  );
}

Widget subwidget(Map<String,dynamic> data){
  return Container(
    width: Adapt.px(200),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new RichText(
            text: TextSpan(
                text: data['days']+' ',
                style: new TextStyle(
                    color: Colors.white,
                    fontSize: Adapt.px(48)
                ),
                children: [
                  new TextSpan(
                      text: data['title'],
                      style: new TextStyle(
                          color: Color(0xffB3C4EA),
                          fontSize: Adapt.px(22)
                      )
                  ),
                  new TextSpan(
                      text: ' '+data['number'],
                      style: new TextStyle(
                          color: Colors.white,
                          fontSize: Adapt.px(30)
                      )
                  )
                ]
            )
        ),
        new Container(
          child: new Text(
            data['desc'],
            style: new TextStyle(
                color: Color(0xff8D93A9),
                fontSize: Adapt.px(22)
            ),
          ),
        )
      ],
    ),
  );
}
//营销
Widget marketingview(){
  return new Row(
    children: <Widget>[
      new Container(
          margin: EdgeInsets.only(left: 15),
          child: new Image.asset(
            'images/marketing.webp',
            width: 46,
            height: 46,
          )
      ),
      new Container(
        margin: EdgeInsets.only(left: 10),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text(
              '• zoey浏览了我的移动工作室',
              style: new TextStyle(
                  fontSize: 12,
                  color: Color(0xFF333333)
              ),
            ),
            new Text(
              '• 慕浏览了我的文章转发｜国...',
              style: new TextStyle(
                  fontSize: 12,
                  color: Color(0xFF333333)
              ),
            ),
          ],
        ),
      ),

    ],
  );
}
//
Widget items(Map<String,dynamic>itemdata){
  return Container(
    width: Adapt.px(150),
    child: new Column(
      children: <Widget>[
        new Image.asset(
          itemdata['imagename'],
          width: Adapt.px(75),
          height: Adapt.px(75),
        ),
        new Container(
          child: new Text(
            itemdata['title'],
            style: new TextStyle(
              color: Color(0xff333333),
              fontSize: Adapt.px(28)
            ),
          ),
        )
      ],
    ),
  );
}