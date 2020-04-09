import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';

import 'action.dart';
import 'state.dart';
List<String> itemtitleArray = ['姓名','手机','邮箱','微信','管理资产','服务客户','公司名称','公司地址'];
TextEditingController _namecontroller = TextEditingController();
TextEditingController _phonecontroller = TextEditingController();
TextEditingController _emailcontroller = TextEditingController();
TextEditingController _wchartcontroller = TextEditingController();
TextEditingController _managercontroller = TextEditingController();
TextEditingController _servercontroller = TextEditingController();
TextEditingController _compationnamecontroller = TextEditingController();
TextEditingController _comprationaddresscontroller = TextEditingController();
List<TextEditingController> _controllArray = [];
Widget buildView(EditCardState state, Dispatch dispatch, ViewService viewService) {

  return Scaffold(
    appBar: new AppBar(
      backgroundColor: Colors.white,
      title: new Text('编辑名片',style:  TextStyle(fontSize: Adapt.px(34),color: Color(0xff333333)),),
    ),
    body: Column(
      children: <Widget>[
        new Padding(
          padding: EdgeInsets.all(Adapt.px(30)),
          child: Row(
            children: <Widget>[
              new Image.asset('images/photo_cardbg@2x.webp',width: Adapt.px(170),height: Adapt.px(226),),
              new Container(
                  margin: EdgeInsets.only(left: Adapt.px(40)),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        child: new Text('上传半身职业照',style:  TextStyle(color: Color(0xff333333),fontSize: Adapt.px(32)),),
                      ),
                      new Container(
                        margin: EdgeInsets.only(top: Adapt.px(15)),
                        width: Adapt.px(480),
                        child: new Text('职业装形象照显得专业、干练、在推荐墙幕上会让客户一眼选中你哟',
                          style: TextStyle(
                            color: Color(0xffFF6633),
                            fontSize: Adapt.px(24),
                          ),),
                      ),
                      new Container(
                        margin: EdgeInsets.only(top: Adapt.px(15)),
                        child: new Text('参照尺寸：570X880px',style: TextStyle(color: Color(0xffBDBDBD),fontSize: Adapt.px(20)),),
                      )
                    ],
                  )
              )
            ],
          ),
        ),
        new Container(
          width: Adapt.screenW(),
          height: Adapt.px(4),
          color: Color(0xfff5f5f5),
        ),
        _items(viewService.context),

      ],
    ),
    bottomSheet: //固定大小的盒子
    new Container(
      margin: EdgeInsets.only(bottom: Adapt.px(44)),
      child: SizedBox(
        width: Adapt.screenW(),
        height: Adapt.px(80),
        child: new MaterialButton(onPressed: (){
          print('${_namecontroller.text},${_phonecontroller.text}');
        },
          color: Color(0xffFF6633),
          child: new Text('保存',style: TextStyle(color: Color(0xffFFFFFF),fontSize: Adapt.px(36)),),
        ),
      ),
    ),
  );
}
_items(BuildContext context){
  List<Widget> items = [];
  for(int i=0;i<itemtitleArray.length;i++){
    items.add(_item(context,itemtitleArray[i],_controllArray[i]));
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
                child: Text(str,style:  TextStyle(color: Color(0xff333333),fontSize: Adapt.px(34)),),
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