import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<CliteleNumberState> buildReducer() {
  return asReducer(
    <Object, Reducer<CliteleNumberState>>{
      CliteleNumberAction.action: _onAction,
    },
  );
}

CliteleNumberState _onAction(CliteleNumberState state, Action action) {
  final CliteleNumberState newState = state.clone();
  return newState;
}
