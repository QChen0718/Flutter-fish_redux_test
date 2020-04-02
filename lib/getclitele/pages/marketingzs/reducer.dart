import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<MarketingZSState> buildReducer() {
  return asReducer(
    <Object, Reducer<MarketingZSState>>{
      MarketingZSAction.action: _onAction,
    },
  );
}

MarketingZSState _onAction(MarketingZSState state, Action action) {
  final MarketingZSState newState = state.clone();
  return newState;
}
