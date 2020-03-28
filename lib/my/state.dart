import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/my/components/menucell/state.dart';
import 'package:flutter_fish_redux_router_qt/my/components/nomalcell/state.dart';
import 'package:flutter_fish_redux_router_qt/my/components/numbercell/state.dart';
import 'package:flutter_fish_redux_router_qt/my/components/ordercell/state.dart';
import 'package:flutter_fish_redux_router_qt/my/components/pushmessagecell/state.dart';
import 'package:flutter_fish_redux_router_qt/my/components/headerview/state.dart';

class MyState implements Cloneable<MyState> {
  HeaderviewState headerviewState;
  NumbercellState numbercellState;
  PushMessageState pushMessageState;
  OrdercellState ordercellState;
  MenucellState menucellState;
  NomalcellState nomalcellState;
  String navbgimagename;
  String rightmessage;
  String rightset;
  String navtitle;
  List<Map<String,dynamic>>nomalcelltitles;
  List<NomalcellState> nomalcells;
  @override
  MyState clone() {
    return MyState()
    ..headerviewState = headerviewState
    ..numbercellState = numbercellState
    ..navbgimagename = navbgimagename
    ..rightmessage = rightmessage
    ..rightset = rightset
    ..navtitle = navtitle
    ..pushMessageState = pushMessageState
    ..ordercellState = ordercellState
    ..menucellState = menucellState
    ..nomalcellState = nomalcellState
    ..nomalcelltitles = nomalcelltitles
    ..nomalcells = nomalcells;
  }
}

MyState initState(Map<String, dynamic> args) {
  HeaderviewState headerviewState = HeaderviewState();
  headerviewState.headerbgimagename = 'images/info_descbgimage.webp';
  headerviewState.username = 'C';
  headerviewState.viplevelicon = 'images/normal_vip.webp';
  headerviewState.isstaff = true;
  headerviewState.headerphotoname = 'images/header_photo.webp';
  headerviewState.itemlist = ['会员特权','员工号'];

  NumbercellState numbercellState = NumbercellState();
  numbercellState.numbers = ['658,500.00','6600','2','9818'];

  PushMessageState pushMessageState = PushMessageState();
  pushMessageState.commpanyicon = 'images/company_icon.webp';
  pushMessageState.messagetitles = ['【交易作废】您提交的报单  国企信托-青白…','【交易作废】您提交的报单  国企信托-青白…'];

  OrdercellState ordercellState = OrdercellState();
  ordercellState.celltitle = '我的订单';
  ordercellState.items = [
    {'title':'预约中','iconname':'images/order_icon0.webp'},
    {'title':'申请合同','iconname':'images/order_icon1.webp'},
    {'title':'待报单','iconname':'images/order_icon2.webp'},
    {'title':'待审核','iconname':'images/order_icon3.webp'},
    {'title':'报单成功','iconname':'images/order_icon4.webp'},
    {'title':'待结佣','iconname':'images/order_icon5.webp'},
    {'title':'结佣成功','iconname':'images/order_icon6.webp'},
    {'title':'失败','iconname':'images/order_icon7.webp'},
    {'title':'我的合同','iconname':'images/order_icon8.webp'},
    {'title':'产品持有','iconname':'images/order_icon9.webp'},
  ];

  MenucellState menucellState = MenucellState();
  menucellState.menuitems = [
    {'title':'交易设置','iconname':'images/menu_icon0.webp'},
    {'title':'金币商城','iconname':'images/menu_icon1.webp'},
    {'title':'优惠券','iconname':'images/menu_icon2.webp'},
    {'title':'我的日历','iconname':'images/menu_icon3.webp'},
    {'title':'产品订阅','iconname':'images/menu_icon4.webp'},
    {'title':'收藏产品','iconname':'images/menu_icon5.webp'},
    {'title':'我的足迹','iconname':'images/menu_icon6.webp'},
    {'title':'我的客服','iconname':'images/menu_icon7.webp'},
  ];
  List<Map<String,dynamic>> nomaltitles = [
    {'title':'理财师认证','icon':'images/nomal_icon0.webp'},
    {'title':'我的服务经理','icon':'images/nomal_icon1.webp'},
    {'title':'实名认证','icon':'images/nomal_icon2.webp'},
    {'title':'邀请理财师好友','icon':'images/nomal_icon3.webp'},
    {'title':'客服电话','icon':'images/nomal_icon4.webp'}];

  return MyState()
  ..headerviewState = headerviewState
  ..numbercellState = numbercellState
  ..navbgimagename = 'images/nav_backgroundimage.webp'
  ..rightmessage = 'images/persion_message.webp'
  ..rightset = 'images/persion_set.webp'
  ..navtitle = '我的'
  ..pushMessageState = pushMessageState
  ..ordercellState = ordercellState
  ..menucellState = menucellState
  ..nomalcelltitles = nomaltitles;
}
