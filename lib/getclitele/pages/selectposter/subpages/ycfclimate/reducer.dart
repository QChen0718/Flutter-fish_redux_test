import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<YCFClimateState> buildReducer() {
  return asReducer(
    <Object, Reducer<YCFClimateState>>{
      YCFClimateAction.action: _onAction,
    },
  );
}

YCFClimateState _onAction(YCFClimateState state, Action action) {
  final YCFClimateState newState = state.clone();
  return newState;
}
