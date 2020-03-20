import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<CjzbState> buildReducer() {
  return asReducer(
    <Object, Reducer<CjzbState>>{
      CjzbAction.action: _onAction,
      CjzbAction.updateData: _onUpdateData,
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