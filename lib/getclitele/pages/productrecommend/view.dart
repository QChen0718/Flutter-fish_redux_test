import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';
import 'package:flutter_fish_redux_router_qt/actions/navbar.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(ProductRecommendState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    body: new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new NavBar(
          titleStr: '产品推介',
        ),
            new Container(
              height: Adapt.px(96),
              decoration: BoxDecoration(
                  border: Border(
                      bottom:
                      BorderSide(width: 0.5, color: Color(0xff979797)))),
              child: new Container(
                margin: EdgeInsets.all(Adapt.px(20)),
                height: Adapt.px(56),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Adapt.px(10)),
                  color: Color(0xffF4F5F6),
                ),
                child: new Row(
                  children: <Widget>[
                    new Container(
                      margin: EdgeInsets.only(
                          left: Adapt.px(16), right: Adapt.px(16)),
                      child: Icon(
                        Icons.search,
                        color: Color(0xffB2B2B2),
                      ),
                    ),
                    new Expanded(
                      child: new TextField(
                        decoration: InputDecoration(
                            hintText: '请输入产品名称',
                            hintStyle: TextStyle(
                                color: Color(0xffB2B2B2),
                                fontSize: Adapt.px(26)),
                            enabledBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            border: InputBorder.none,
                            contentPadding:
                            EdgeInsets.only(top: 10, bottom: 10)),
                        style:
                        TextStyle(textBaseline: TextBaseline.alphabetic),
                      ),
                    ),
                    new Container(
                      margin: EdgeInsets.only(right: Adapt.px(16)),
                      child: Icon(
                        Icons.cancel,
                        color: Color(0xffB2B2B2),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            new Padding(
              padding:
              EdgeInsets.only(left: Adapt.px(15), right: Adapt.px(15)),
              child: new Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            width: 0.5, color: Color(0xffC7C6C6)))),
                height: Adapt.px(80),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Expanded(
                      child: new Container(
                        padding: EdgeInsets.only(left: Adapt.px(10)),
                        child: new Text(
                          '搜索历史',
                          style: TextStyle(
                              fontSize: Adapt.px(32),
                              color: Color(0xff333333)),
                        ),
                      ),
                    ),
                    new Container(
                      padding: EdgeInsets.only(right: Adapt.px(10)),
                      child: Icon(
                        Icons.delete,
                        color: Color(0xff999999),
                        size: Adapt.px(21),
                      ),
                    ),
                    new Container(
                      padding: EdgeInsets.only(right: Adapt.px(10)),
                      child: new Text(
                        '清空搜索历史',
                        style: TextStyle(
                            fontSize: Adapt.px(22), color: Color(0xffC8C8C8)),
                      ),
                    )
                  ],
                ),
              ),
            ),
            new Container(
              padding: EdgeInsets.all(Adapt.px(30)),
              child: Wrap(
                alignment: WrapAlignment.start,
                spacing: Adapt.px(36),
                runSpacing: Adapt.px(23),
                children: <Widget>[
                  new Container(
//                      alignment: Alignment.center,
                    height: Adapt.px(40),
                    color: Color(0xffF4F5F6),
                    padding: EdgeInsets.only(
                        left: Adapt.px(25), right: Adapt.px(25)),
                    child: new Text(
                      '央企信托-29号扬州广陵',
                      style: TextStyle(
                        fontSize: Adapt.px(24),
                        color: Color(0xff666666),

                      ),
                    ),
                  ),
                  new Container(
//                      alignment: Alignment.center,
                    height: Adapt.px(40),
                    color: Color(0xffF4F5F6),
                    padding: EdgeInsets.only(
                        left: Adapt.px(25), right: Adapt.px(25)),
                    child: new Text(
                      'XX信托-成阿二号',
                      style: TextStyle(
                        fontSize: Adapt.px(24), color: Color(0xff666666),
//                            height: 1.5
                      ),
                    ),
                  ),
                  new Container(
//                      alignment: Alignment.center,
                    height: Adapt.px(40),
                    color: Color(0xffF4F5F6),
                    padding: EdgeInsets.only(
                        left: Adapt.px(25), right: Adapt.px(25)),
                    child: new Text(
                      '国企信托-青白江政信',
                      style: TextStyle(
                        fontSize: Adapt.px(24), color: Color(0xff666666),

                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
  );
}
