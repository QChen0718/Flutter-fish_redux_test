import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<SharejlState> buildReducer() {
  return asReducer(
    <Object, Reducer<SharejlState>>{
      SharejlAction.action: _onAction,
    },
  );
}

SharejlState _onAction(SharejlState state, Action action) {
  final SharejlState newState = state.clone();
  return newState;
}
