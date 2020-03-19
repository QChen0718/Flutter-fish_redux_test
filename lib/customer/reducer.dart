import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<CustomerState> buildReducer() {
  return asReducer(
    <Object, Reducer<CustomerState>>{
      CustomerAction.action: _onAction,
    },
  );
}

CustomerState _onAction(CustomerState state, Action action) {
  final CustomerState newState = state.clone();
  return newState;
}
