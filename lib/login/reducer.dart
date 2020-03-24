import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<LoginState> buildReducer() {
  return asReducer(
    <Object, Reducer<LoginState>>{
      LoginAction.action: _onAction,
      LoginAction.update: _onUpdate,
    },
  );
}

LoginState _onAction(LoginState state, Action action) {
  final LoginState newState = state.clone();
  newState.isshow = state.isshow;
  return newState;
}
LoginState _onUpdate(LoginState state, Action action) {
  final LoginState newState = state.clone();
  newState.isshow = !state.isshow;
  return newState;
}