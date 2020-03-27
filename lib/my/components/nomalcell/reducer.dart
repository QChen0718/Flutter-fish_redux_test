import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<NomalcellState> buildReducer() {
  return asReducer(
    <Object, Reducer<NomalcellState>>{
      NomalcellAction.action: _onAction,
    },
  );
}

NomalcellState _onAction(NomalcellState state, Action action) {
  final NomalcellState newState = state.clone();
  return newState;
}
