import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<StaticsListcellState> buildReducer() {
  return asReducer(
    <Object, Reducer<StaticsListcellState>>{
      StaticsListcellAction.action: _onAction,
    },
  );
}

StaticsListcellState _onAction(StaticsListcellState state, Action action) {
  final StaticsListcellState newState = state.clone();
  return newState;
}
