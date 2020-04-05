import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(SharejlCellState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    padding: EdgeInsets.fromLTRB(Adapt.px(25), Adapt.px(40), Adapt.px(25), Adapt.px(40)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children:[
              new RichText(
                  text: new TextSpan(
                    text: '• ',
                    style: new TextStyle(
                      color: Color(0xffCACACA),
                      fontSize: Adapt.px(30)
                    ),
                    children: [
                      new TextSpan(
                        text: state.sharetitle,
                        style:TextStyle(
                            color: Color(0xff52B7FD)
                        ),
                      )
                    ]
                  )
              ),
              new Text(
                state.sharedate,
                style: TextStyle(
                    color: Color(0xffCACACA)
                ),
              ),
            ]
        ),
        new Container(
          padding: EdgeInsets.only(top: Adapt.px(25)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Container(
                alignment: Alignment.center,
                height: Adapt.px(50),
                child: RichText(
                  textAlign:TextAlign.center,
                  text: TextSpan(
                      text:state.looknumber,
                      style:TextStyle(
                        color:Color(0xff666666),
                        fontSize: Adapt.px(30),
                      ),
                      children: [
                        TextSpan(
                          text:state.lookcount.toString(),
                          style:TextStyle(
                            fontSize:Adapt.px(46),
                            color: Color(0xffFF6633),
                          ),

                        )
                      ]
                  ),
                ),
              ),
              new Container(
                color: Color(0xffC7C6C6),
                width: 0.5,
                height: Adapt.px(40),
              ),
              new RichText(
                text: TextSpan(
                    text:state.lookpersion,
                    style:TextStyle(
                        color:Color(0xff666666),
                        fontSize: Adapt.px(30)
                    ),
                    children: [
                      TextSpan(
                          text:state.persioncount.toString(),
                          style:TextStyle(
                              fontSize:Adapt.px(46),
                              color: Color(0xffFF6633)
                          )
                      )
                    ]
                ),
              )
            ],
          ),
        ),
      ],
    ),
    decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(
                color: Color(0xffC7C6C6),
                width: 0.5
            )
        )
    ),
  );
}
