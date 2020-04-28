import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ForWardingzsHeaderState> buildReducer() {
  return asReducer(
    <Object, Reducer<ForWardingzsHeaderState>>{
      ForWardingzsHeaderAction.action: _onAction,
      ForWardingzsHeaderAction.update: _onUpdate,
    },
  );
}

ForWardingzsHeaderState _onAction(ForWardingzsHeaderState state, Action action) {
  final ForWardingzsHeaderState newState = state.clone();
  newState.isedict = true;
  return newState;
}
ForWardingzsHeaderState _onUpdate(ForWardingzsHeaderState state, Action action) {
  final ForWardingzsHeaderState newState = state.clone();
  newState.isedict = true;
  return newState;
}