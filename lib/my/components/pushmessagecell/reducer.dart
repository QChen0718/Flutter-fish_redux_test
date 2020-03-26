import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<PushMessageState> buildReducer() {
  return asReducer(
    <Object, Reducer<PushMessageState>>{
      PushMessageAction.action: _onAction,
    },
  );
}

PushMessageState _onAction(PushMessageState state, Action action) {
  final PushMessageState newState = state.clone();
  return newState;
}
