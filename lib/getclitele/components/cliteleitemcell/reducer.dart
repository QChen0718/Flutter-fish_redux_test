import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<CliteleItemCellState> buildReducer() {
  return asReducer(
    <Object, Reducer<CliteleItemCellState>>{
      CliteleItemCellAction.action: _onAction,
    },
  );
}

CliteleItemCellState _onAction(CliteleItemCellState state, Action action) {
  final CliteleItemCellState newState = state.clone();
  return newState;
}
