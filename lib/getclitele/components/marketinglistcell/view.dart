import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(MarketingListcellState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    padding: EdgeInsets.all(Adapt.px(30)),
    child: new Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Image.asset('',width: Adapt.px(96),height: Adapt.px(96),),
                new Container(
                  padding: EdgeInsets.only(left: Adapt.px(15)),
                  child: new Text(
                    'Zoey',
                    style: new TextStyle(
                        color: Color(0xff333333),
                        fontSize: Adapt.px(30)
                    ),
                  ),
                )
              ],
            ),
            new RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text: '浏览了',
                      style: TextStyle(
                          color: Color(0xff666666),
                          fontSize: Adapt.px(30)
                      )
                  ),
                  TextSpan(
                      text: '财经早知道2020-02-14',
                      style: TextStyle(
                          color: Color(0xff52B7FD),
                          fontSize: Adapt.px(30)
                      )
                  ),
                ],

              ),
            ),
          ],
        ),
        new Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            new Container(
//                margin: EdgeInsets.only(top: Adapt.px(20)),
              child: new Text(
                '升级为客户',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: Adapt.px(30)
                ),
              ),
              color: Color(0xffF36E27),
              padding: EdgeInsets.only(left: Adapt.px(10),right: Adapt.px(10)),
            ),
            new Container(
              padding: EdgeInsets.only(top: 40),
              child: new Text(
                '02-14 19：06',
                style:  TextStyle(
                    color: Color(0xff999999),
                    fontSize: Adapt.px(24)
                ),
              ),
            )
          ],
        ),
      ],
    ),
    decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(width: 0.5,color: Color(0xffC7C6C6))
        )
    ),
  );
}
