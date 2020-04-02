import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<MarketingCluesState> buildReducer() {
  return asReducer(
    <Object, Reducer<MarketingCluesState>>{
      MarketingCluesAction.action: _onAction,
    },
  );
}

MarketingCluesState _onAction(MarketingCluesState state, Action action) {
  final MarketingCluesState newState = state.clone();
  return newState;
}
