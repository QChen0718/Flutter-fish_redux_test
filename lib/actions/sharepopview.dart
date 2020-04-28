import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';

class SharePopView extends StatefulWidget{
  @override
  _SharePopViewState createState() => _SharePopViewState();
}
class _SharePopViewState extends State<SharePopView>{
  List<Map<String,dynamic>> items = [
    {'imagename':'images/wxchart_icon.webp','title':'微信好友'},
    {'imagename':'images/wxcircle_icon.webp','title':'朋友圈'},
  ];
  bool isselect;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isselect = false;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: Adapt.screenW(),
      height: Adapt.px(439),
      color: Colors.white,
      child: new Column(
        children: <Widget>[
          new GestureDetector(
            onTap: (){
              setState(() {
                isselect = !isselect;
              });
            },
            child: new Container(
              margin: EdgeInsets.all(Adapt.px(15)),
              height: Adapt.px(82),
              child: new Row(
                children: <Widget>[
                  new Container(
                    margin: EdgeInsets.only(left: Adapt.px(40),right: Adapt.px(10)),
                    child: new Image.asset(
                      isselect?'images/select_box_select.webp':'images/select_box_nomal.webp',
                      width: Adapt.px(25),
                      height: Adapt.px(25),
                    ),
                  ),
                  new Container(
                    child: new Text(
                      '转发后展示我的名片',
                      style: new TextStyle(
                          color: Color(0xff999999),
                          fontSize: Adapt.px(28)
                      ),
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: Color(0xff979797),
                          width: 1
                      )
                  )
              ),
            ),
          ),
          new Expanded(
              child: new Container(
                padding: EdgeInsets.only(left: Adapt.px(100),right: Adapt.px(100),top: Adapt.px(60)),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(items.length, (index){
                    return subwidget(items[index]['imagename'], items[index]['title']);
                  }),
                ),
                decoration: BoxDecoration(
//              设置阴影
                  color: Colors.white,

                ),
              )
          ),
          new Container(
            height: Adapt.px(100),
            child: new Center(
              child: new Text(
                '关闭',
                style: new TextStyle(
                  color: Color(0xff000000),
                  fontSize: Adapt.px(34)
                ),
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
//              阴影位置由offset决定,阴影模糊层度由blurRadius大小决定（大就更透明更扩散），阴影模糊大小由spreadRadius决定
                      color: Color(0xff727272).withAlpha(50),offset: Offset(2.0, 2.0),blurRadius: 3.0,spreadRadius: 2.0
                  )
                ]
            ),
          )
        ],
      ),
    );
  }
  Widget subwidget(String imagename, String title){
    return Container(
      child: new Column(
        children: <Widget>[
          new Container(
            child: new Image.asset(
              imagename,
              width: Adapt.px(64),
              height: Adapt.px(54),
            ),
          ),
          new Container(
            margin: EdgeInsets.only(top: Adapt.px(45)),
            child: new Text(
              title,
              style: TextStyle(
                color: Color(0xff000000),
                fontSize: Adapt.px(28)
              ),
            ),
          )
        ],
      ),
    );
  }
}
