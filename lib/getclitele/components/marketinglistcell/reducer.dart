import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<MarketingListcellState> buildReducer() {
  return asReducer(
    <Object, Reducer<MarketingListcellState>>{
      MarketingListcellAction.action: _onAction,
    },
  );
}

MarketingListcellState _onAction(MarketingListcellState state, Action action) {
  final MarketingListcellState newState = state.clone();
  return newState;
}
