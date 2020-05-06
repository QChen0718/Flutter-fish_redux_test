import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(CliteleNumberState state, Dispatch dispatch, ViewService viewService) {
  return Container(
      padding: EdgeInsets.fromLTRB(Adapt.px(28), Adapt.px(20), Adapt.px(28), Adapt.px(20)),
      child: new Stack(
        children: <Widget>[
         new Image.asset(
              state.numberbg,
              width: Adapt.px(694),
              height: Adapt.px(330),
              fit: BoxFit.fill,
          ),
          new Container(
            height: Adapt.px(300),
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Container(
                  margin: EdgeInsets.only(left: Adapt.px(62),right: Adapt.px(20)),
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
                  width: Adapt.px(440),
                  child: new Wrap(
                      spacing: Adapt.px(20),
                      runSpacing: Adapt.px(30),
                      children: List.generate(state.numberslist?.length ?? 0, (index){
                        return subwidget(state.numberslist[index]);
                      })
                  ),
                ),
              ],
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