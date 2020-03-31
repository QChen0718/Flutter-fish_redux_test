import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<CjcellState> buildReducer() {
  return asReducer(
    <Object, Reducer<CjcellState>>{
      CjcellAction.action: _onAction,
      CjcellAction.updateData: _onUpdateData,
    },
  );
}

CjcellState _onAction(CjcellState state, Action action) {
  final CjcellState newState = state.clone();
  return newState;
}
CjcellState _onUpdateData(CjcellState state, Action action) {
  final CjcellState newState = state.clone();
  newState.celltitle = action.payload;
  return newState;
}