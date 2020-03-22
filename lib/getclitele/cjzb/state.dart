import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'components/state.dart';


class CjzbState implements Cloneable<CjzbState> {
  CjcellState cjcellState;
  List<CjcellState> listcell;
  int count;

  @override
  CjzbState clone() {
    return CjzbState()
    ..cjcellState = cjcellState
    ..listcell  = listcell
    ..count = count;
  }
}

CjzbState initState(Map<String, dynamic> args) {
//  初始化赋值
  CjcellState cjcellState = CjcellState();
  return CjzbState()
  ..cjcellState = cjcellState
  ..count = 0;
}
