import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<TopShareCellState> buildReducer() {
  return asReducer(
    <Object, Reducer<TopShareCellState>>{
      TopShareCellAction.action: _onAction,
    },
  );
}

TopShareCellState _onAction(TopShareCellState state, Action action) {
  final TopShareCellState newState = state.clone();
  return newState;
}
