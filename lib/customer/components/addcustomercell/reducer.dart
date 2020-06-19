import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<AddCustomerCellState> buildReducer() {
  return asReducer(
    <Object, Reducer<AddCustomerCellState>>{
      AddCustomerCellAction.action: _onAction,
    },
  );
}

AddCustomerCellState _onAction(AddCustomerCellState state, Action action) {
  final AddCustomerCellState newState = state.clone();
  return newState;
}
