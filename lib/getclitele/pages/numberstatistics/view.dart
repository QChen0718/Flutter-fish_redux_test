import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';
import 'package:flutter_fish_redux_router_qt/actions/navbar.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(NumberStatisticsState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    backgroundColor: Colors.white,
    body: Column(
      children: <Widget>[
        new Container(
          child: new NavBar(
            titleStr: state.nav_title,
            titleColor: Color(0xff333333),
            isHiddenLeftIcon: false,
            leftButtonClick: (){
              dispatch(NumberStatisticsActionCreator.onBack());
            },
            rightIcons: <Widget>[

            ],
          ),
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(
              color: Color(0xfff5f5f5),
              width: Adapt.px(10)
            ))
          ),
        ),
        new Container(
          color: Colors.white,
          margin: EdgeInsets.only(top: Adapt.px(10)),
          child: new Column(
            children: <Widget>[
              new Container(
                height: Adapt.px(94),
                margin: EdgeInsets.only(left: Adapt.px(24),right: Adapt.px(24)),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(width: 0.5,color: Color(0xffD8D8D8)))
                ),
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: Text(
                        state.numbersmap,
                        style: TextStyle(
                            fontSize: Adapt.px(34),
                            color: Color(0xff333333)
                        ),
                      ),
                    ),
                    new Container(
                      margin: EdgeInsets.only(left: Adapt.px(15),right: Adapt.px(58)),
                      child: new Text(
                        state.weeksum,
                        style: TextStyle(
                            fontSize: Adapt.px(28),
                            color: Color(0xffFF6633)
                        ),
                      ),
                    ),
                    new Text(
                      state.day,
                      style: TextStyle(
                          fontSize: Adapt.px(28),
                          color: Color(0xff999999)
                      ),
                    ),
                  ],
                ),
              ),
              new Padding(
                padding: EdgeInsets.all(Adapt.px(45)),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: List.generate(state.titlestrArraydict.length, (index){
                    return _item(state.titlestrArraydict[index]);
                  })
                ),
              )
            ],
          ),
        ),
        new Container(
          color: Colors.white,
          margin: EdgeInsets.only(top: Adapt.px(10)),
          child: new Column(
            children: <Widget>[
              new Container(
                margin: EdgeInsets.only(left: Adapt.px(24),right: Adapt.px(24)),
                height: Adapt.px(94),
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 0.5,color: Color(0xffD8D8D8))
                  ),
                ),
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                        child: new Text(
                          '理财师发布获客内容统计',
                          style:  TextStyle(
                            fontSize: Adapt.px(34),
                            color: Color(0xff333333),
                          ),
                        )
                    ),
                    new Container(
                      margin: EdgeInsets.only(right: Adapt.px(9)),
                      child: new Text(
                        '详情',
                        style:  TextStyle(
                          fontSize: Adapt.px(28),
                          color: Color(0xffFF6633),
                        ),
                      ),
                    ),
                    new Icon(Icons.arrow_forward_ios,size: Adapt.px(26),color: Color(0xffC7C7CC),)
                  ],
                ),
              ),
              new Padding(
                padding: EdgeInsets.fromLTRB(Adapt.px(24), Adapt.px(30), Adapt.px(24), Adapt.px(30)),
                child: new Column(
                  children: List.generate(state.titleStrArray.length, (index){
                      return _cell(state.titleStrArray[index]);
                  }),
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
_cell(Map<String,dynamic>data){
  return Container(
    margin: EdgeInsets.only(bottom: Adapt.px(25)),
    child: new Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text(
              data['title'],
              style: TextStyle(
                  fontSize: Adapt.px(24),
                  color: Color(0xff999999)
              ),
            ),
            new SizedBox(
              child: new LinearProgressIndicator(
                backgroundColor: Colors.white,
                value: data['progress'],
                valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
              ),
              height: 5,
              width: 200,
            ),

          ],
        ),
        new Text(
          '0次',
          style: TextStyle(
              fontSize: Adapt.px(28),
              color: Color(0xff5A5A5A)
          ),
        ),
      ],
    ),
  );
}
_item(Map<String,dynamic>data){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      new Container(
        margin: EdgeInsets.only(bottom: Adapt.px(15)),
        child: new Image.asset(data['icon'],width: Adapt.px(42),height: Adapt.px(39),),
      ),
      new Text(data['numbers'],style: TextStyle(fontSize: Adapt.px(38),color: Color(0xffFF6633)),),
      new Text(data['desc'],style: TextStyle(fontSize: Adapt.px(24),color: Color(0xff999999)),)
    ],
  );
}