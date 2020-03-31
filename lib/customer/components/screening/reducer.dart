import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ScreeningState> buildReducer() {
  return asReducer(
    <Object, Reducer<ScreeningState>>{
      ScreeningAction.action: _onAction,
    },
  );
}

ScreeningState _onAction(ScreeningState state, Action action) {
  final ScreeningState newState = state.clone();
  return newState;
}
