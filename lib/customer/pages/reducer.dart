import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<CustomerDetailState> buildReducer() {
  return asReducer(
    <Object, Reducer<CustomerDetailState>>{
      CustomerDetailAction.action: _onAction,
    },
  );
}

CustomerDetailState _onAction(CustomerDetailState state, Action action) {
  final CustomerDetailState newState = state.clone();
  return newState;
}
