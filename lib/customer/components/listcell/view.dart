import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(CustomerListcellState state, Dispatch dispatch, ViewService viewService) {
  return GestureDetector(
    onTap: (){
      //跳转到详情页面
      dispatch(CustomerListcellActionCreator.onAction());
    },
    child: Container(
      padding: EdgeInsets.all(Adapt.px(25)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Image.asset(
            state.cellheaderimagename,
            width: Adapt.px(108),
            height: Adapt.px(108),
            fit: BoxFit.fill,
          ),
          new Expanded(
            child: new Container(
              padding: EdgeInsets.only(left: Adapt.px(22)),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Container(
                    child: new Text(
                      state.username,
                      style: TextStyle(
                          color: Color(0xff333333),
                          fontSize:Adapt.px(32)
                      ),
                    ),
                  ),
                  new Container(
                    padding: EdgeInsets.only(top: Adapt.px(10),bottom: Adapt.px(10)),
                    child: new Text(
                      state.date,
                      style: TextStyle(
                          color: Color(0xff999999),
                          fontSize: Adapt.px(26)
                      ),
                    ),
                  ),
                  new Wrap(
                    spacing: Adapt.px(10),
                    children: List.generate(state.user_items.length, (index){
                      return _wrapitem(state.user_items[index]);
                    }),
                  )
                ],
              ),
            ),
          ),
          new Container(
            padding: EdgeInsets.only(top: Adapt.px(40)),
            child: Column(
              children: <Widget>[
                //富文本
                new RichText(
                  text: TextSpan(
                      text: state.numbers,
                      style: TextStyle(
                          color: Color(0xffFF6633),
                          fontSize: Adapt.px(42)
                      ),
                      children: [
                        new TextSpan(
                            text:state.unit,
                            style: TextStyle(
                                color: Color(0xffFF6633),
                                fontSize: Adapt.px(24)
                            )
                        )
                      ]
                  ),
                ),
                new Text(
                  state.description,
                  style: TextStyle(
                      color: Color(0xff666666),
                      fontSize: Adapt.px(24)
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
                  color: Color(0xffC7C6C6),
                  width: 1
              )
          )
      ),
    ),
  );
}
Widget _wrapitem(String tagtitle){
  return Container(
    padding: EdgeInsets.only(left: Adapt.px(20),right: Adapt.px(20)),
    child: Text(
      tagtitle,
      style: TextStyle(
          color: Color(0xff666666),
          fontSize: Adapt.px(24)
      ),
    ),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Adapt.px(18)),
        color: Color(0xffF5F5F5)
    ),
  );
}