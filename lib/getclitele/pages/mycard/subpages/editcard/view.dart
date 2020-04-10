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
        new Expanded(
            child: new Form(
                key: state.formKey, //设置globalKey，用于后面获取FormState
                child: new Column(
                  children: List.generate(state.listcardinputdata.length, (index){
                    return _item(viewService.context, state.listcardinputdata[index]);
                  }),
                )
            )
        ),
//        _items(viewService.context,state),
      ],
    ),
    bottomSheet: //固定大小的盒子
    new Container(
      margin: EdgeInsets.only(bottom: Adapt.px(44)),
      child: SizedBox(
        width: Adapt.screenW(),
        height: Adapt.px(80),
        child: new MaterialButton(onPressed: (){
//          print('${state.namecontroller.text},${state.phonecontroller.text}');
//        校验成功
          var form = state.formKey.currentState as FormState ;
          dispatch(EditCardActionCreator.onSubmitClick());
        },
          color: Color(0xffFF6633),
          child: new Text('保存',style: TextStyle(color: Color(0xffFFFFFF),fontSize: Adapt.px(36)),),
        ),
      ),
    ),
  );
}

Widget _item(BuildContext context,Map<String,dynamic>data){
  return new Container(
        height: Adapt.px(98),
        child: Row(
          children: <Widget>[
            new Expanded(
              child: Container(
                margin: EdgeInsets.only(left: Adapt.px(20)),
                child: Text(
                  data['title'],
                  style:  TextStyle(
                      color: Color(0xff333333),
                      fontSize: Adapt.px(34)
                  ),
                ),
              ),
            ),
            new Container(
              width: Adapt.px(580),
              child: TextFormField(
                  decoration: InputDecoration(
                      fillColor: Colors.transparent,
                      filled: true,
                      hintText: data['placeholder'],
//                      disabledBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,//输入框选中时下划线
                      focusedBorder: InputBorder.none,//输入框未选中时下划线
                      errorBorder: InputBorder.none,

                    errorStyle: TextStyle(
                      color: Colors.blue
                    )
                  ),
                  controller: data['textcontroller'],
                  textAlign: TextAlign.right,
                  onChanged: (text){
                    _onChanged(text);
                  },
                  onSaved: (value){
                    return value;
                  },
              ),
            )
          ],
        ),
      decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(
              color: Color(0xfff5f5f5),
              width: Adapt.px(1)
          )
        )
      ),
  );
}
_onChanged(String text){
  print(text);
}