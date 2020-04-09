import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/editcardheader/state.dart';

class EditCardState implements Cloneable<EditCardState> {
  String navtitle;
  EditCardHeaderviewState editCardHeaderviewState;
  List<String> itemtitleArray;
  TextEditingController namecontroller;
  TextEditingController phonecontroller;
  TextEditingController emailcontroller;
  TextEditingController wchartcontroller;
  TextEditingController managercontroller;
  TextEditingController servercontroller;
  TextEditingController compationnamecontroller;
  TextEditingController comprationaddresscontroller;
  List<TextEditingController> controllArray;
  @override
  EditCardState clone() {
    return EditCardState()
    ..navtitle = navtitle
    ..editCardHeaderviewState = editCardHeaderviewState;
  }
}

EditCardState initState(Map<String, dynamic> args) {
  EditCardHeaderviewState editCardHeaderviewState = EditCardHeaderviewState();
  editCardHeaderviewState.headerphoto = 'images/photo_cardbg.webp';
  editCardHeaderviewState.headertitle = '上传半身职业照';
  editCardHeaderviewState.headercontent = '职业装形象照显得专业、干练、在推荐墙幕上会让客户一眼选中你哟';
  editCardHeaderviewState.headersize = '参照尺寸：570X880px';
  List<String> itemtitleArray = ['姓名','手机','邮箱','微信','管理资产','服务客户','公司名称','公司地址'];
  TextEditingController namecontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController wchartcontroller = TextEditingController();
  TextEditingController managercontroller = TextEditingController();
  TextEditingController servercontroller = TextEditingController();
  TextEditingController compationnamecontroller = TextEditingController();
  TextEditingController comprationaddresscontroller = TextEditingController();
  List<TextEditingController> controllArray = [
    namecontroller,
    phonecontroller,
    emailcontroller,
    wchartcontroller,
    managercontroller,
    servercontroller,
  compationnamecontroller,
  comprationaddresscontroller];
  return EditCardState()
  ..navtitle = '编辑名片'
  ..editCardHeaderviewState = editCardHeaderviewState
  ..itemtitleArray = itemtitleArray
  ..namecontroller = namecontroller
  ..phonecontroller = phonecontroller
  ..emailcontroller = emailcontroller
  ..wchartcontroller = wchartcontroller
  ..managercontroller = managercontroller
  ..servercontroller = servercontroller
  ..compationnamecontroller = compationnamecontroller
  ..comprationaddresscontroller = comprationaddresscontroller
  ..controllArray = controllArray;
}
