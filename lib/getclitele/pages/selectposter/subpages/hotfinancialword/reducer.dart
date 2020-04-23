import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<HotFinancialWordState> buildReducer() {
  return asReducer(
    <Object, Reducer<HotFinancialWordState>>{
      HotFinancialWordAction.action: _onAction,
      HotFinancialWordAction.init: _onInit
    },
  );
}

HotFinancialWordState _onAction(HotFinancialWordState state, Action action) {
  final HotFinancialWordState newState = state.clone();
  return newState;
}

HotFinancialWordState _onInit(HotFinancialWordState state, Action action) {
  final HotFinancialWordState newState = state.clone();
  newState.hotliststate = action.payload;
  if(newState.hotliststate.length == 0){
    newState.isnodata = true;
  }
  return newState;
}