import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<NumbercellState> buildReducer() {
  return asReducer(
    <Object, Reducer<NumbercellState>>{
      NumbercellAction.action: _onAction,
    },
  );
}

NumbercellState _onAction(NumbercellState state, Action action) {
  final NumbercellState newState = state.clone();
  return newState;
}
