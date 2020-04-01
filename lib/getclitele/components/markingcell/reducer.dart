import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<MarkingCellState> buildReducer() {
  return asReducer(
    <Object, Reducer<MarkingCellState>>{
      MarkingCellAction.action: _onAction,
    },
  );
}

MarkingCellState _onAction(MarkingCellState state, Action action) {
  final MarkingCellState newState = state.clone();
  return newState;
}
