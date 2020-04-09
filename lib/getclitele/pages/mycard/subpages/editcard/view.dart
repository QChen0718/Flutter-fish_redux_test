import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';
import 'package:flutter_fish_redux_router_qt/actions/navbar.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(EditCardState state, Dispatch dispatch, ViewService viewService) {

  return Scaffold(
    backgroundColor: Colors.white,
    body: Column(
      children: <Widget>[
        new NavBar(
          titleStr: state.navtitle,
        ),
        viewService.buildComponent('photoheader'),
        _items(viewService.context,state),
      ],
    ),
    bottomSheet: //固定大小的盒子
    new Container(
      margin: EdgeInsets.only(bottom: Adapt.px(44)),
      child: SizedBox(
        width: Adapt.screenW(),
        height: Adapt.px(80),
        child: new MaterialButton(onPressed: (){
          print('${state.namecontroller.text},${state.phonecontroller.text}');
        },
          color: Color(0xffFF6633),
          child: new Text('保存',style: TextStyle(color: Color(0xffFFFFFF),fontSize: Adapt.px(36)),),
        ),
      ),
    ),
  );
}
_items(BuildContext context,EditCardState state){
  List<Widget> items = [];
  for(int i=0;i<state.itemtitleArray.length;i++){
    items.add(_item(context,state.itemtitleArray[i],state.controllArray[i]));
  }
  return Column(
    children: items,
  );
}
Widget _item(BuildContext context,String str,TextEditingController controller){
  return Column(
    children: <Widget>[
      new Container(
        height: Adapt.px(98),
        child: Row(
          children: <Widget>[
            new Expanded(
              child: Container(
                margin: EdgeInsets.only(left: Adapt.px(20)),
                child: Text(
                  str,
                  style:  TextStyle(
                      color: Color(0xff333333),
                      fontSize: Adapt.px(34)
                  ),
                ),
              ),
            ),
            new Container(
              width: Adapt.px(580),
              child: TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.transparent,
                      filled: true,
                      hintText: '请输入姓名',
//                      disabledBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,//输入框选中时下划线
                      focusedBorder: InputBorder.none //输入框未选中时下划线
                  ),
                  controller: controller,
                  textAlign: TextAlign.right,
                  onChanged: (text){
                    _onChanged(text);
                  }
              ),
            )
          ],
        ),
      ),
      new Container(
        color: Color(0xff979797),
        height: 1,
        width: Adapt.screenW(),
      )
    ],
  );
}
_onChanged(String text){
  print(text);
}