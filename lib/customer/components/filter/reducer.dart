import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;

import 'action.dart';
import 'state.dart';

Reducer<FilterState> buildReducer() {
  return asReducer(
    <Object, Reducer<FilterState>>{
      FilterAction.action: _onAction,
      FilterAction.statusUpdate : _onStatusUpdate,
      FilterAction.updateUI: _onUpdateUI,
      FilterAction.show : _onShow
    },
  );
}

FilterState _onAction(FilterState state, Action action) {
  final FilterState newState = state.clone();
  return newState;
}
//对应筛选项点击更新UI方法
FilterState _onStatusUpdate(FilterState state, Action action) {

  final FilterState newState = state.clone();
  newState.isshow = !newState.isshow;
//  更改第一个筛选的title
  newState.titles[0] = action.payload;
  return newState;
}
// 显示下拉筛选项的方法
FilterState _onShow(FilterState state,Action action) {
  final FilterState newState = state.clone();
  newState.isshow = !newState.isshow;
  //  选择的筛选item
  newState.selectitemtitle = action.payload;
  return newState;
}

FilterState _onUpdateUI(FilterState state, Action action){
  final FilterState newState = state.clone();
  newState.selectitem = action.payload;
  if (newState.selectitem != state.selectitem){
      newState.textColor = Color(0xffFF6633);
  }else{
    if (newState.textColor == Color(0xffFF6633)){
      newState.textColor = Color(0xff333333);
    }else{
      newState.textColor = Color(0xffFF6633);
    }
  }


  return newState;
}