import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';
import 'package:flutter_fish_redux_router_qt/actions/navbar.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(CustomerDetailState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    body: new Column(
      children: <Widget>[
        new Stack(
          children: <Widget>[
            new Image.asset(
              'images/nav_backgroundimage.webp',
              width: Adapt.screenW(),
              height: Adapt.px(388)+Adapt.padTopH(),
              fit: BoxFit.fill,
            ),
            new NavBar(
              titleStr: '详情',
              titleColor: Colors.white,
              backgroundColor: Colors.transparent,
              isshowBottomlien: false,
              leftIcon: Image.asset(
                  'images/white_back_icon.webp',
              ),
              rightIcons: <Widget>[
                new Container(
                  margin: EdgeInsets.only(right: Adapt.px(30)),
                  child: new Image.asset(
                      'images/more_nav_icon.webp'
                  ),
                )
              ],
            ),
            new Padding(
              padding:
              EdgeInsets.only(top: Adapt.px(128)+Adapt.padTopH(), bottom: Adapt.px(10)),
              child: _headerView(viewService.context),
            )
          ],
        )
      ],
    ),
  );
}
Widget _headerView(BuildContext context) {
  return new Container(
    padding: EdgeInsets.only(left: Adapt.px(40), right: Adapt.px(40)),
    child: new Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Image.asset(
              'images/header_photo.webp',
              width: Adapt.px(118),
              height: Adapt.px(118),
            ),
            new Container(
              padding: EdgeInsets.only(top: Adapt.px(20)),
              child: Text(
                '个人标签',
                style: new TextStyle(
                    color: Color(0xffC1B08D),
                    fontSize: Adapt.px(24)
                ),
              ),
            ),
          ],
        ),
        new Expanded(
            child: new Container(
              padding: EdgeInsets.only(left: Adapt.px(30)),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    '王强',
                    style: TextStyle(
                        color: Color(0xffFFEAC0),
                        fontSize: Adapt.px(48),
                        fontWeight: FontWeight.bold),
                  ),
                  new Container(
                    child: new Text(
                      '最近访问：2020-02-24 17：23',
                      style: TextStyle(
                          color: Color(0xffC1B08D), fontSize: Adapt.px(22)),
                    ),
                  ),
                  new Container(
                    margin: EdgeInsets.only(top: Adapt.px(40)),
                    child: Wrap(
                        spacing: Adapt.px(15),
                        runSpacing: Adapt.px(15),
                        children:_items(context)
                    ),
                  ),
                ],
              ),
            ))
      ],
    ),
  );
}
_items(BuildContext context){
  List<Widget> items = [];
  List<String> titles = ['偏好房地产','拆迁户','拆迁户','偏好房地产','偏好房地产','拆迁户',];
  titles.forEach((str){
    items.add(_item(str));
  });
  items.add(
      new Image.asset(
        'images/add_item_icon.webp',
        width: Adapt.px(34),
        height: Adapt.px(34),
      )
  );
  return items;
}
_item(String title){
  return new Container(
    padding: EdgeInsets.only(left: Adapt.px(13),right: Adapt.px(13)),
    child: new Text(
      title,
      style: new TextStyle(
          color: Color(0xffDEC58A),
          fontSize: Adapt.px(24)
      ),
    ),
    decoration: BoxDecoration(
        border: Border.fromBorderSide(
          BorderSide(
              width: 0.5,
              color: Color(0xff978455)
          ),
        ),
        borderRadius: BorderRadius.circular(Adapt.px(17))
    ),
  );
}