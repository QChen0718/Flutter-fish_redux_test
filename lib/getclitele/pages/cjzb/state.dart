import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/cjzb/adapter.dart';
import 'package:flutter_fish_redux_router_qt/models/newstitlemodel.dart';
import 'components/state.dart';


class CjzbState extends MutableSource implements Cloneable<CjzbState> {
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

  @override
  Object getItemData(int index) {
    // TODO: implement getItemData
    return listcell[index];
  }

  @override
  String getItemType(int index) {
    // TODO: implement getItemType
    return CjzbAdapter.cjzbcellType;
  }

  @override
  // TODO: implement itemCount
  int get itemCount => listcell?.length ?? 0;

  @override
  void setItemData(int index, Object data) {
    // TODO: implement setItemData
    listcell[index] = data;
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
