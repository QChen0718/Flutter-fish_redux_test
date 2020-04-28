import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';

class LoadingView extends Dialog{
  final String wxurl;

  LoadingView({Key key,this.wxurl}):super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      padding: EdgeInsets.all(12.0),
//      设置透明背景
      child: new Material(
        type: MaterialType.transparency,
        child: new Stack(
          fit: StackFit.expand,
          children: <Widget>[
            new GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
            ),
            Center(
              child: new Container(
                width: Adapt.px(610),
                height: Adapt.px(440),
                child: new Stack(
                  alignment: AlignmentDirectional.center,
                  children: <Widget>[
                    new Column(
                      children: <Widget>[
                        new Container(
                          margin: EdgeInsets.only(top: Adapt.px(41)),
                          child: new Image.asset(
                            'images/wxchart_icon.webp',
                            width: Adapt.px(71),
                            height: Adapt.px(60),
                          ),
                        ),
                        new Container(
                          margin: EdgeInsets.only(top: Adapt.px(23)),
                          child: new Text(
                            '检测到微信文章链接',
                            style: new TextStyle(
                              color: Color(0xff333333),
                              fontSize: Adapt.px(34)
                            ),
                          ),
                        ),
                        new Container(
                          margin: EdgeInsets.only(top: Adapt.px(20), bottom: Adapt.px(39)),
                          width: Adapt.px(540),
                          height: Adapt.px(77),
                          child: new Text(
                            wxurl,
                            style: new TextStyle(
                              color: Color(0xff9B9B9B),
                              fontSize: Adapt.px(32)
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xffF1F1F1)
                          ),
                        ),
                        new GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                            Navigator.pushNamed(context, 'forwardingzs');
                          },
                          child: new Container(
                            width: Adapt.px(440),
                            height: Adapt.px(88),
                            child: new Text(
                              '前往「转发助手」编辑',
                              style: new TextStyle(
                                  color: Colors.white,
                                  fontSize: Adapt.px(34),
                                  height: 2
                              ),
                              textAlign: TextAlign.center,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(Adapt.px(8)),
                                color: Color(0xffFF6633)
                            ),
                          ),
                        )
                      ],
                    ),
                    new Positioned(
                        top: Adapt.px(23),
                        right: Adapt.px(43),
                        child: new GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: new Image.asset(
                            'images/close_pop_icon.webp',
                            width: Adapt.px(27),
                            height: Adapt.px(27),
                          ),
                        )
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Adapt.px(8))
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}