import 'package:fish_redux/fish_redux.dart';

class MyCardState implements Cloneable<MyCardState> {

  String cardbgimagename;
  String username;  //名称
  String userposition; //职务
  String phonename; //电话图标
  String navtitle;
  List<Map<String,dynamic>> userinfolist;
  String editbtntitle;
  String sharebtntitle;
  String editbtnbgimage;
  String detailstr;
  String lookstr;
  String lookicon;
  String photoHeader;
  String phoneNumber;
  @override
  MyCardState clone() {
    return MyCardState()
    ..cardbgimagename = cardbgimagename
    ..username = username
    ..userposition = userposition
    ..phonename = phonename
    ..userinfolist = userinfolist
    ..navtitle = navtitle
    ..editbtntitle = editbtntitle
    ..sharebtntitle = sharebtntitle
    ..editbtnbgimage = editbtnbgimage
    ..detailstr = detailstr
    ..lookicon = lookicon
    ..lookstr = lookstr
    ..photoHeader = photoHeader
    ..phoneNumber = phoneNumber;
  }
}

MyCardState initState(Map<String, dynamic> args) {
  List<Map<String,dynamic>> userinfolist = [
    {'number':'12','desc':'服务客户(位)'},
    {'number':'5.12','desc':'管理资产(万)'}
  ];
  return MyCardState()
  ..cardbgimagename = 'images/card_bg.png'
  ..username = 'C'
  ..userposition = '高级理财经理'
  ..phonename = 'images/phone_icon.webp'
  ..userinfolist = userinfolist
  ..navtitle = '我的名片'
  ..editbtntitle = '编辑名片'
  ..sharebtntitle = '分享名片'
  ..editbtnbgimage = 'images/editcard_btnbg.webp'
  ..detailstr = '分享名片，追踪客户访问记录'
  ..lookstr = '15人查看'
  ..lookicon = 'images/eye_icon.webp';
}
