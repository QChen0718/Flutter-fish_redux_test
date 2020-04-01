import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(NumberStatisticsState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    backgroundColor: Color(0xfff5f5f5),
    appBar: new AppBar(
      title: new Text('数据统计',style: new TextStyle(fontSize: 16),),
    ),
    body: Column(
      children: <Widget>[
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
                        '数据总览',
                        style: TextStyle(
                            fontSize: Adapt.px(34),
                            color: Color(0xff333333)
                        ),
                      ),
                    ),
                    new Container(
                      margin: EdgeInsets.only(left: Adapt.px(15),right: Adapt.px(58)),
                      child: new Text(
                        '周累计',
                        style: TextStyle(
                            fontSize: Adapt.px(28),
                            color: Color(0xffFF6633)
                        ),
                      ),
                    ),
                    new Text(
                      '昨日',
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
                  children: _items(),
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
                  children: _cells(),
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
_cells(){
  List<Widget> cells = [];
  List<String> titleStrArray = ['分享移动工作室','发布智能名片','产品推广','发布每日财经资讯','海报分享','发布精彩视频','转发助手分享','发布随手发'];
  List progressArray = [0.2,0.5,0.7,0.3,0.6,0.9,0.2,0.5];
  for(int i=0;i<titleStrArray.length;i++){
    cells.add(_cell(titleStrArray[i], progressArray[i]));
  }
  return cells;
}
_cell(String titlestr,double progress){
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
              titlestr,
              style: TextStyle(
                  fontSize: Adapt.px(24),
                  color: Color(0xff999999)
              ),
            ),
            new SizedBox(
              child: new LinearProgressIndicator(
                backgroundColor: Colors.white,
                value: progress,
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
_items(){
  List<Widget> items =[];
  List<String> titlestrArray = ['累计获客(人)','累计访问(人)','周新增(人)','新增成交(人)'];
  titlestrArray.forEach((str){
    items.add(_item(str));
  });
  return items;
}
_item(String titlestr){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      new Container(
        margin: EdgeInsets.only(bottom: Adapt.px(15)),
        color: Colors.red,
        child: new Image.asset('',width: Adapt.px(42),height: Adapt.px(39),),
      ),
      new Text('128',style: TextStyle(fontSize: Adapt.px(38),color: Color(0xffFF6633)),),
      new Text(titlestr,style: TextStyle(fontSize: Adapt.px(24),color: Color(0xff999999)),)
    ],
  );
}