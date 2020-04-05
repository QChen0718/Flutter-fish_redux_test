import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<StaticsHeaderState> buildReducer() {
  return asReducer(
    <Object, Reducer<StaticsHeaderState>>{
      StaticsHeaderAction.action: _onAction,
    },
  );
}

StaticsHeaderState _onAction(StaticsHeaderState state, Action action) {
  final StaticsHeaderState newState = state.clone();
  return newState;
}
