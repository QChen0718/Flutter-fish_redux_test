import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<CustomerState> buildReducer() {
  return asReducer(
    <Object, Reducer<CustomerState>>{
      CustomerAction.action: _onAction,
      CustomerAction.updateData:_onUpdateData
    },
  );
}

CustomerState _onAction(CustomerState state, Action action) {
  final CustomerState newState = state.clone();
  return newState;
}

CustomerState _onUpdateData(CustomerState state, Action action) {
  final CustomerState newState = state.clone();
  newState.textname = '修改客户';
  return newState;
}