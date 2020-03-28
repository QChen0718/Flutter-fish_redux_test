import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<UsersetState> buildReducer() {
  return asReducer(
    <Object, Reducer<UsersetState>>{
      UsersetAction.action: _onAction,
      UsersetAction.init:_onInit,
    },
  );
}

UsersetState _onAction(UsersetState state, Action action) {
  final UsersetState newState = state.clone();
  return newState;
}

UsersetState _onInit(UsersetState state, Action action) {
  final UsersetState newState = state.clone();
  newState.setitems = action.payload;
  return newState;
}