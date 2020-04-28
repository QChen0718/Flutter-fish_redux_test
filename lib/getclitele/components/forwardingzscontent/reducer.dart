import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ForWardingzsContentState> buildReducer() {
  return asReducer(
    <Object, Reducer<ForWardingzsContentState>>{
      ForWardingzsContentAction.action: _onAction,
    },
  );
}

ForWardingzsContentState _onAction(ForWardingzsContentState state, Action action) {
  final ForWardingzsContentState newState = state.clone();
  return newState;
}
