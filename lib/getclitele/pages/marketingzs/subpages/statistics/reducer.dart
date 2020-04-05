import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<StatisticsState> buildReducer() {
  return asReducer(
    <Object, Reducer<StatisticsState>>{
      StatisticsAction.action: _onAction,
      StatisticsAction.init:_onInit
    },
  );
}

StatisticsState _onAction(StatisticsState state, Action action) {
  final StatisticsState newState = state.clone();
  return newState;
}

StatisticsState _onInit(StatisticsState state, Action action) {
  final StatisticsState newState = state.clone();
  newState.listcell = action.payload;
  return newState;
}