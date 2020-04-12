import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<GreatVideoState> buildReducer() {
  return asReducer(
    <Object, Reducer<GreatVideoState>>{
      GreatVideoAction.action: _onAction,
    },
  );
}

GreatVideoState _onAction(GreatVideoState state, Action action) {
  final GreatVideoState newState = state.clone();
  return newState;
}
