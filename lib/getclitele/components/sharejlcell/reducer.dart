import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<SharejlCellState> buildReducer() {
  return asReducer(
    <Object, Reducer<SharejlCellState>>{
      SharejlCellAction.action: _onAction,
    },
  );
}

SharejlCellState _onAction(SharejlCellState state, Action action) {
  final SharejlCellState newState = state.clone();
  return newState;
}
