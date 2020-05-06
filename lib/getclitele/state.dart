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

  CliteleNumberState cliteleNumberState = CliteleNumberState();
  MarkingCellState markingCellState = MarkingCellState();

  CliteleItemCellState cliteleItemCellState = CliteleItemCellState();
  cliteleItemCellState.items = items;
  return NewGetCliteleState()
  ..navtitle = '获客中心'
  ..navrightbtnname = 'images/nav_right_numbericon.webp'
  ..cliteleNumberState = cliteleNumberState
  ..markingCellState = markingCellState
  ..cliteleItemCellState = cliteleItemCellState;
}
