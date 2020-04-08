import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;

import 'action.dart';
import 'state.dart';

Reducer<ScreeningState> buildReducer() {
  return asReducer(
    <Object, Reducer<ScreeningState>>{
      ScreeningAction.action: _onAction,
      ScreeningAction.selectItems: _onSelectItems,
      ScreeningAction.reset: _onReset
    },
  );
}

ScreeningState _onAction(ScreeningState state, Action action) {
  final ScreeningState newState = state.clone();
  return newState;
}

ScreeningState _onSelectItems(ScreeningState state, Action action) {
  var dict = action.payload;
  final ScreeningState newState = state.clone();
  if(dict['bgcolor'] == Color(0xffF5F5F5)){
    newState.screeningitems[dict['section']]['items'][dict['row']]['isselect'] = true;
    newState.itemtextcolor = Color(0xffFF6633);
    newState.itemtextbgcolor = Color(0xffFFECE6);
  }else{
    newState.screeningitems[dict['section']]['items'][dict['row']]['isselect'] = false;
    newState.itemtextcolor = Color(0xff4A4A4A);
    newState.itemtextbgcolor = Color(0xffF5F5F5);
  }

  newState.selectitem = dict;
  return newState;
}
//重置
ScreeningState _onReset(ScreeningState state, Action action) {
  final ScreeningState newState = state.clone();
  newState.itemtextcolor = Color(0xff4A4A4A);
  newState.itemtextbgcolor = Color(0xffF5F5F5);
  return newState;
}