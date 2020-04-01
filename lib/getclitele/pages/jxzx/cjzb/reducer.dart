import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/models/cjzblist.dart';

import 'action.dart';
import 'components/state.dart';
import 'state.dart';


Reducer<CjzbState> buildReducer() {
  return asReducer(
    <Object, Reducer<CjzbState>>{
      CjzbAction.action: _onAction,
      CjzbAction.updateData: _onUpdateData,
      CjzbAction.onInit:_onInit
    },
  );
}

CjzbState _onAction(CjzbState state, Action action) {
  final CjzbState newState = state.clone();
  return newState;
}

CjzbState _onUpdateData(CjzbState state, Action action) {
  final CjzbState newState = state.clone();
//  newState.cjcellState.celltitle = action.payload;
  return newState;
}

CjzbState _onInit(CjzbState state,Action action) {
  final CjzbState newState = state.clone();
  newState.listcell = action.payload;
  newState.count = action.payload.length;
  return newState;
}
