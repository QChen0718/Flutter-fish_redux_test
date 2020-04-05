import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<TopShareState> buildReducer() {
  return asReducer(
    <Object, Reducer<TopShareState>>{
      TopShareAction.action: _onAction,
      TopShareAction.init: _onInit
    },
  );
}

TopShareState _onAction(TopShareState state, Action action) {
  final TopShareState newState = state.clone();
  return newState;
}

TopShareState _onInit(TopShareState state, Action action) {
  final TopShareState newState = state.clone();
  newState.topliststate = action.payload;
  return newState;
}