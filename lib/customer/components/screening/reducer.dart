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
  if(dict['section']!=4 && dict['section']!=6){

    newState.screeningitems[dict['section']]['items'].forEach((data){
       data['isselect'] = false;
    });
  }
  if(dict['bgcolor'] == Color(0xffF5F5F5)){
    newState.screeningitems[dict['section']]['items'][dict['row']]['isselect'] = true;
  }else{
    newState.screeningitems[dict['section']]['items'][dict['row']]['isselect'] = false;
  }
  return newState;
}
//重置
ScreeningState _onReset(ScreeningState state, Action action) {
  final ScreeningState newState = state.clone();
  newState.screeningitems.forEach((data){
    data['items'].forEach((subdata){
      subdata['isselect'] = false;
    });
  });
  return newState;
}