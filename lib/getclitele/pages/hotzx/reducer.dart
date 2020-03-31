import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<HotzxState> buildReducer() {
  return asReducer(
    <Object, Reducer<HotzxState>>{
      HotzxAction.action: _onAction,
      HotzxAction.update: _onUpdate,
      HotzxAction.init:_onInit
    },
  );
}

HotzxState _onAction(HotzxState state, Action action) {
  final HotzxState newState = state.clone();
  return newState;
}

HotzxState _onUpdate(HotzxState state, Action action) {
  final HotzxState newState = state.clone();
  newState.headerState.content = "修改数据";
  return newState;
}

HotzxState _onInit(HotzxState state, Action action){
  final HotzxState newState = state.clone();
  newState.headerState = action.payload;
  return newState;
}