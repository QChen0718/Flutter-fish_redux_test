import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<CustomerListcellState> buildReducer() {
  return asReducer(
    <Object, Reducer<CustomerListcellState>>{
      CustomerListcellAction.action: _onAction,
    },
  );
}

CustomerListcellState _onAction(CustomerListcellState state, Action action) {
  final CustomerListcellState newState = state.clone();
  return newState;
}
