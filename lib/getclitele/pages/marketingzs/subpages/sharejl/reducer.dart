import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<SharejlState> buildReducer() {
  return asReducer(
    <Object, Reducer<SharejlState>>{
      SharejlAction.action: _onAction,
      SharejlAction.init: _onInit
    },
  );
}

SharejlState _onAction(SharejlState state, Action action) {
  final SharejlState newState = state.clone();
  return newState;
}

SharejlState _onInit(SharejlState state, Action action) {
  final SharejlState newState = state.clone();
  newState.shareliststate = action.payload;
  return newState;
}