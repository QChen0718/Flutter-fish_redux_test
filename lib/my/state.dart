import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/my/components/numbercell/state.dart';
import 'package:flutter_fish_redux_router_qt/my/components/pushmessagecell/state.dart';
import 'package:flutter_fish_redux_router_qt/my/components/state.dart';

class MyState implements Cloneable<MyState> {
  HeaderviewState headerviewState;
  NumbercellState numbercellState;
  PushMessageState pushMessageState;
  String navbgimagename;
  String rightmessage;
  String rightset;
  String navtitle;
  @override
  MyState clone() {
    return MyState()
    ..headerviewState = headerviewState
    ..numbercellState = numbercellState
    ..navbgimagename = navbgimagename
    ..rightmessage = rightmessage
    ..rightset = rightset
    ..navtitle = navtitle
    ..pushMessageState = pushMessageState;
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
  return MyState()
  ..headerviewState = headerviewState
  ..numbercellState = numbercellState
  ..navbgimagename = 'images/nav_backgroundimage.webp'
  ..rightmessage = 'images/persion_message.webp'
  ..rightset = 'images/persion_set.webp'
  ..navtitle = '我的'
  ..pushMessageState = pushMessageState;
}
