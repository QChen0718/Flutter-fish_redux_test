import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<OrdercellState> buildReducer() {
  return asReducer(
    <Object, Reducer<OrdercellState>>{
      OrdercellAction.action: _onAction,
    },
  );
}

OrdercellState _onAction(OrdercellState state, Action action) {
  final OrdercellState newState = state.clone();
  return newState;
}
