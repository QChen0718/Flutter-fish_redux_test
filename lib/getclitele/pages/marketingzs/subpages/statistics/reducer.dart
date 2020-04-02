import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<StatisticsState> buildReducer() {
  return asReducer(
    <Object, Reducer<StatisticsState>>{
      StatisticsAction.action: _onAction,
    },
  );
}

StatisticsState _onAction(StatisticsState state, Action action) {
  final StatisticsState newState = state.clone();
  return newState;
}
