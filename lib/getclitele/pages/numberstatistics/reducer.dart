import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<NumberStatisticsState> buildReducer() {
  return asReducer(
    <Object, Reducer<NumberStatisticsState>>{
      NumberStatisticsAction.action: _onAction,
    },
  );
}

NumberStatisticsState _onAction(NumberStatisticsState state, Action action) {
  final NumberStatisticsState newState = state.clone();
  return newState;
}
