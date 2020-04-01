import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/cliteleitemcell/state.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/markingcell/state.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/numbercell/state.dart';

class NewGetCliteleState implements Cloneable<NewGetCliteleState> {
  CliteleNumberState cliteleNumberState;
  MarkingCellState markingCellState;
  CliteleItemCellState cliteleItemCellState;
  String navtitle;
  String navrightbtnname;

  @override
  NewGetCliteleState clone() {
    return NewGetCliteleState()
    ..navtitle = navtitle
    ..navrightbtnname = navrightbtnname
    ..cliteleNumberState = cliteleNumberState
    ..markingCellState = markingCellState
    ..cliteleItemCellState = cliteleItemCellState;
  }
}

NewGetCliteleState initState(Map<String, dynamic> args) {
  List<Map<String,dynamic>> items = [
    {'imagename':'images/item_gzs.webp','title':'移动工作室'},
  {'imagename':'images/item_mp.webp','title':'智能名片'},
  {'imagename':'images/item_tj.webp','title':'产品推介'},
  {'imagename':'images/item_cj.webp','title':'每日财经'},
  {'imagename':'images/item_hb.webp','title':'精品海报'},
  {'imagename':'images/item_video.webp','title':'精彩视频'},
  {'imagename':'images/item_zs.webp','title':'转发助手'},
  {'imagename':'images/item_ssf.webp','title':'随手发'},
  {'imagename':'images/item_qd.webp','title':'敬请期待'}];
  List<Map<String,dynamic>> numberslist = [
    {'days':'3','title':'日增','number':'0','desc':'累计客户(人)'},
    {'days':'17','title':'日增','number':'0','desc':'累计访问(人)'},
    {'days':'7','title':'日增','number':'0','desc':'累计发布(次)'},
    {'days':'3','title':'日增','number':'0','desc':'累计绑定客户数(人)'},
  ];
  List<Map<String,dynamic>> markinglist = [
    {'title':'zoey浏览了我的移动工作室','date':'04-01 15:20'},
    {'title':'幕浏览了我的文章转发','date':'03-25 15:20'}
  ];
  CliteleNumberState cliteleNumberState = CliteleNumberState();
  cliteleNumberState.numberbg = 'images/number_bg.webp';
  cliteleNumberState.numberslist = numberslist;
  cliteleNumberState.numbertext = '获客数据';
  cliteleNumberState.numbericon = 'images/number_icon.webp';
  MarkingCellState markingCellState = MarkingCellState();
  markingCellState.markingname = 'images/marketing.webp';
  markingCellState.arrow_name = 'images/nomal_arrow.webp';
  markingCellState.markinglist = markinglist;
  CliteleItemCellState cliteleItemCellState = CliteleItemCellState();
  cliteleItemCellState.items = items;
  return NewGetCliteleState()
  ..navtitle = '获客中心'
  ..navrightbtnname = 'images/nav_right_numbericon.webp'
  ..markingCellState = markingCellState
  ..cliteleNumberState = cliteleNumberState
  ..cliteleItemCellState = cliteleItemCellState;
}
