import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<CjzbState> buildReducer() {
  return asReducer(
    <Object, Reducer<CjzbState>>{
      CjzbAction.action: _onAction,
    },
  );
}

CjzbState _onAction(CjzbState state, Action action) {
  final CjzbState newState = state.clone();
  return newState;
}
