import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<HeaderviewState> buildReducer() {
  return asReducer(
    <Object, Reducer<HeaderviewState>>{
      HeaderviewAction.action: _onAction,
    },
  );
}

HeaderviewState _onAction(HeaderviewState state, Action action) {
  final HeaderviewState newState = state.clone();
  return newState;
}
