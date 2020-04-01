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
          new Container(
            padding: EdgeInsets.fromLTRB(Adapt.px(35), Adapt.px(18), Adapt.px(35), Adapt.px(18)),
            child: new Row(
              children: <Widget>[
                new Image.asset(
                  state.markingname,
                  width: Adapt.px(92),
                  height: Adapt.px(92),
                  fit: BoxFit.fill,
                ),
                new Expanded(
                    child: new Column(
                      children: List.generate(state.markinglist.length, (index){
                        return markingsubwidget(state.markinglist[index]);
                      })
                    )
                ),
                new Image.asset(
                  state.arrow_name,
                  width: Adapt.px(16),
                  height: Adapt.px(26),
                )
              ],
            ),
            decoration: BoxDecoration(
              border: Border(top: BorderSide(
                  color: Color(0xfff5f5f5),
                  width: Adapt.px(10)
                 ),
                bottom: BorderSide(
                  color: Color(0xfff5f5f5),
                  width: Adapt.px(10)
                )
              )
            ),
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
Widget markingsubwidget(Map<String,dynamic> data){
  return new Container(
    margin: EdgeInsets.only(left: Adapt.px(20)),
    child: new Row(
      children: <Widget>[
        new Expanded(
            child: new RichText(
                text: new TextSpan(
                    text: '• ',
                    style: new TextStyle(
                        color: Color(0xffF36E27),
                        fontSize: Adapt.px(18)
                    ),
                    children: [
                      new TextSpan(
                        text: data['title'],
                        style: new TextStyle(
                            color: Color(0xff333333),
                            fontSize: Adapt.px(24)
                        ),
                      )
                    ]
                )
            )

        ),
        new Container(
          margin: EdgeInsets.only(right: Adapt.px(20),left: Adapt.px(50)),
          child: new Text(
            data['date'],
            style: new TextStyle(
                color: Color(0xffB2B2B2),
                fontSize: Adapt.px(24)
            ),
          ),
        )
      ],
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
          padding: EdgeInsets.only(top: Adapt.px(15)),
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