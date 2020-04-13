import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ForwardingZSState> buildReducer() {
  return asReducer(
    <Object, Reducer<ForwardingZSState>>{
      ForwardingZSAction.action: _onAction,
    },
  );
}

ForwardingZSState _onAction(ForwardingZSState state, Action action) {
  final ForwardingZSState newState = state.clone();
  return newState;
}
