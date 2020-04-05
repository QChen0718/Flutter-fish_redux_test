import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<HotFinancialWordeCellState> buildReducer() {
  return asReducer(
    <Object, Reducer<HotFinancialWordeCellState>>{
      HotFinancialWordeCellAction.action: _onAction,
    },
  );
}

HotFinancialWordeCellState _onAction(HotFinancialWordeCellState state, Action action) {
  final HotFinancialWordeCellState newState = state.clone();
  return newState;
}
