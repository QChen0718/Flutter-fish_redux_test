import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<addcustomerState> buildReducer() {
  return asReducer(
    <Object, Reducer<addcustomerState>>{
      addcustomerAction.action: _onAction,
      addcustomerAction.initui: _onInitui
    },
  );
}

addcustomerState _onAction(addcustomerState state, Action action) {
  final addcustomerState newState = state.clone();
  return newState;
}

addcustomerState _onInitui(addcustomerState state, Action action) {
  final addcustomerState newState = state.clone();
  newState.states = action.payload;
  return newState;
}