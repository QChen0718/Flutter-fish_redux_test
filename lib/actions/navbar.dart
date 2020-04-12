
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/app.dart';

import 'adapt.dart';

class NavBar extends StatefulWidget{
  final Image leftIcon; //左边图片按钮
  final bool isHiddenLeftIcon; //是否隐藏左边按钮
  final List<Widget> rightIcons; //右边按钮数组
  final String titleStr; //导航标题
  final Color titleColor; //标题颜色
  final void Function() leftButtonClick; //左侧按钮点击回调方法
  final Color backgroundColor; //导航栏背景
  final double lineHeight; //底部分割线高度
  final bool isshowBottomlien;
  const NavBar({Key key,
    this.leftIcon,
    this.isHiddenLeftIcon = false,
    this.rightIcons,
    this.titleStr,
    this.leftButtonClick,
    this.titleColor,
    this.backgroundColor,
    this.lineHeight = 10.0,
    this.isshowBottomlien = true
  }) : super(key: key);
  @override
  _NavBarState createState() => _NavBarState();

}
class _NavBarState extends State<NavBar>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // Stack 层次布局
    // 第一个元素显示在最上面，后面的
    return new Container(
      height: Adapt.px(88)+ Adapt.padTopH(),
      child: new Container(
        height: Adapt.px(88),
        margin: EdgeInsets.only(top: Adapt.padTopH()),
        child: new Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            new Center(
                child: new Container(
                  width: Adapt.px(460),
                  child: new Text(
                    widget.titleStr,
                    style:  TextStyle(
                        color: widget?.titleColor ?? Color(0xff333333),
                        fontSize: Adapt.px(34)
                    ),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  )
                ),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Offstage(
                  offstage: widget.isHiddenLeftIcon,
                  child: new GestureDetector(
                      onTap: widget?.leftButtonClick ?? (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.only(left: Adapt.px(36)),
                        child: widget?.leftIcon ?? Image.asset(
                          'images/nav_back_icon.webp',
                          width: Adapt.px(44),
                          height: Adapt.px(44),
                        ),
                      )
                  ),
                ),
                new Row(
                  children: widget?.rightIcons ??[],
                ),
              ],
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
          color: widget?.backgroundColor ?? Colors.white,
        border:widget.isshowBottomlien? Border(
          bottom: BorderSide(
            color: Color(0xfff5f5f5),
            width: Adapt.px(widget.lineHeight)
          )
        ):Border()
      ),
    );
  }

}