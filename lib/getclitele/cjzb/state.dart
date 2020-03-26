import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/models/newstitlemodel.dart';
import 'components/state.dart';


class CjzbState implements Cloneable<CjzbState> {
  CjcellState cjcellState;
  List<CjcellState> listcell;
  int newsTypeId;
  int attr;
  int count;
  int pageIndex;
  int pageSize;
  @override
  CjzbState clone() {
    return CjzbState()
    ..cjcellState = cjcellState
    ..listcell  = listcell
    ..count = count
    ..newsTypeId = newsTypeId
    ..attr = attr
    ..pageIndex = pageIndex
    ..pageSize = pageSize;
  }
}

CjzbState initState(Map<String, dynamic> args) {
  NewsTitleData newsTitleData = args['model'];
//  初始化赋值
  CjcellState cjcellState = CjcellState();
  return CjzbState()
  ..cjcellState = cjcellState
  ..count = 0
  ..attr = newsTitleData.attr == null? 0:newsTitleData.attr
  ..pageIndex = 1
  ..pageSize = 10
  ..newsTypeId = newsTitleData.id;
}
