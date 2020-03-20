import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/cjzb/components/state.dart';

class CjzbState implements Cloneable<CjzbState> {
  CjcellState cjcellState;
  @override
  CjzbState clone() {
    return CjzbState()
    ..cjcellState = cjcellState;
  }
}

CjzbState initState(Map<String, dynamic> args) {
  CjcellState cjcellState = CjcellState();
  cjcellState.celltitle = '今日资讯2019年11月26日今日资讯2019年11月26日今日资讯2019年11月26日';
  cjcellState.cellcontent = '3/19·132阅读·预计阅读：6分钟';
  cjcellState.cellcoverimagename = 'images/Bitmap.webp';
  return CjzbState()
  ..cjcellState = cjcellState;
}
