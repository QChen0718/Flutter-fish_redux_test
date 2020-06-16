import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_fish_redux_router_qt/singleton/khsingleton.dart';

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
  newState.screeningitems[dict['section']]['items'][dict['row']]['isselect'] = !dict['isselect'];

  _setFilterConditions(newState,dict);
  return newState;
}
//设置筛选条件
_setFilterConditions(ScreeningState state,Map<String,dynamic> indexpath){
  var khsignial = KHSingleton.getInstance();
  var itemsArray = state.screeningitems[indexpath['section']]['items'] as List;
  switch (indexpath['section']) {
    case 0:
//      是否注册
      khsignial.isRegister = '';
      itemsArray.forEach((data){
        if (data['isselect']){
          if(data['subtitle'] == '是'){
            khsignial.isRegister = 'true';
          }else{
            khsignial.isRegister = 'false';
          }
        }
      });
      break;
    case 1:
//      是否有手机号

      break;
    case 2:
//      是否成交
      break;
    case 3:
//      是否有微信号
      break;
    case 4:
//      来源
      break;
    case 5:
//      是否有标签
      break;
    case 6:
//      标签
      break;
  }
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