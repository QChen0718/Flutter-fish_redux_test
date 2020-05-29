
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/editcardheader/state.dart';

class EditCardState implements Cloneable<EditCardState> {
  String navtitle;
  EditCardHeaderviewState editCardHeaderviewState;
  TextEditingController namecontroller;
  TextEditingController phonecontroller;
  TextEditingController emailcontroller;
  TextEditingController wchartcontroller;
  TextEditingController managercontroller;
  TextEditingController servercontroller;
  TextEditingController compationnamecontroller;
  TextEditingController comprationaddresscontroller;
  List<Map<String,dynamic>> listcardinputdata;
  List<String>placeholderlist;
  GlobalKey formKey;
  @override
  EditCardState clone() {
    return EditCardState()
    ..navtitle = navtitle
    ..editCardHeaderviewState = editCardHeaderviewState
    ..namecontroller = namecontroller
    ..phonecontroller = phonecontroller
    ..emailcontroller = emailcontroller
    ..wchartcontroller = wchartcontroller
    ..managercontroller = managercontroller
    ..servercontroller = servercontroller
    ..compationnamecontroller = compationnamecontroller
    ..comprationaddresscontroller = comprationaddresscontroller
    ..listcardinputdata = listcardinputdata
    ..placeholderlist = placeholderlist
    ..formKey = formKey;
  }
}

EditCardState initState(Map<String, dynamic> args) {
  EditCardHeaderviewState editCardHeaderviewState = EditCardHeaderviewState();
  editCardHeaderviewState.headerphoto = 'images/photo_cardbg.webp';
  editCardHeaderviewState.headertitle = '上传半身职业照';
  editCardHeaderviewState.headercontent = '职业装形象照显得专业、干练、在推荐墙幕上会让客户一眼选中你哟';
  editCardHeaderviewState.headersize = '参照尺寸：570X880px';
  TextEditingController namecontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController wchartcontroller = TextEditingController();
  TextEditingController managercontroller = TextEditingController();
  TextEditingController servercontroller = TextEditingController();
  TextEditingController compationnamecontroller = TextEditingController();
  TextEditingController comprationaddresscontroller = TextEditingController();

  List<Map<String,dynamic>> listcardinputdata = [
    {'title':'姓名','placeholder':'请输入姓名','textcontroller':namecontroller},
    {'title':'手机','placeholder':'请输入手机号','textcontroller':phonecontroller},
    {'title':'邮箱','placeholder':'请输入邮箱账户','textcontroller':emailcontroller},
    {'title':'微信','placeholder':'请输入微信号','textcontroller':wchartcontroller},
    {'title':'管理资产','placeholder':'请输入管理资产数','textcontroller':managercontroller},
    {'title':'服务客户','placeholder':'请输入服务客户数','textcontroller':servercontroller},
    {'title':'公司名称','placeholder':'请输入公司名称','textcontroller':compationnamecontroller},
    {'title':'公司地址','placeholder':'请输入公司地址','textcontroller':comprationaddresscontroller},
  ];
  List<String>placeholderlist = [
    '姓名不能为空','手机号不能为空','请输入邮箱账户','请输入微信号',
    '请输入管理资产数','请输入服务客户数','请输入公司名称','请输入公司地址'
  ];
  return EditCardState()
  ..navtitle = '编辑名片'
  ..editCardHeaderviewState = editCardHeaderviewState
  ..namecontroller = namecontroller
  ..phonecontroller = phonecontroller
  ..emailcontroller = emailcontroller
  ..wchartcontroller = wchartcontroller
  ..managercontroller = managercontroller
  ..servercontroller = servercontroller
  ..compationnamecontroller = compationnamecontroller
  ..comprationaddresscontroller = comprationaddresscontroller
  ..listcardinputdata = listcardinputdata
  ..formKey = new GlobalKey<FormState>()
  ..placeholderlist = placeholderlist;
}
