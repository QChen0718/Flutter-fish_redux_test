import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/main/state.dart';

class ScreeningState implements Cloneable<ScreeningState> {
  List<Map<String,dynamic>>screeningitems = [
    {'title':'是否注册APP','items':[{'subtitle':'是','isselect':false},{'subtitle':'否','isselect':false}]},
    {'title':'是否有手机号','items':[{'subtitle':'是','isselect':false},{'subtitle':'否','isselect':false}]},
    {'title':'是否成交','items':[{'subtitle':'是','isselect':false},{'subtitle':'否','isselect':false}]},
    {'title':'是否有微信号','items':[{'subtitle':'是','isselect':false},{'subtitle':'否','isselect':false}]},
    {'title':'来源','items':[
      {'subtitle':'名片分享添加','isselect':false},
      {'subtitle':'产品分享添加','isselect':false},
      {'subtitle':'产品分享添加','isselect':false},
      {'subtitle':'APP注册绑定','isselect':false}]},
    {'title':'是否有标签','items':[{'subtitle':'是','isselect':false},{'subtitle':'否','isselect':false}],'isselect':false},
    {'title':'标签','items':[
      {'subtitle':'偏好房地产','isselect':false},
      {'subtitle':'拆迁户','isselect':false},
      {'subtitle':'基础设施','isselect':false}]},
  ];
  List<Map<String,dynamic>> btnstyle=[
    {'title':'重置','textcolor':Color(0xff4A4A4A),'bgcolor':Color(0xffF5F5F5)},
    {'title':'确定','textcolor':Color(0xffFFFFFF),'bgcolor':Color(0xffF36E27)}
  ];
  Color itemtextcolor;
  Color itemtextbgcolor;
  Map<String,dynamic> selectitem;
  @override
  ScreeningState clone() {
    return ScreeningState()
    ..screeningitems = screeningitems
    ..btnstyle = btnstyle
    ..itemtextcolor = itemtextcolor
    ..itemtextbgcolor = itemtextbgcolor
    ..selectitem = selectitem;
  }
}

class ScreeningConnector extends ConnOp<MainState,ScreeningState>{
  @override
  ScreeningState get(MainState state) {
    // TODO: implement get
    ScreeningState newstate = ScreeningState();
    if(state.screeningState!=null){
      newstate = state.screeningState;
    }
    return newstate;
  }
  @override
  void set(MainState state, ScreeningState subState) {
    // TODO: implement set
    state.screeningState = subState;
  }
}