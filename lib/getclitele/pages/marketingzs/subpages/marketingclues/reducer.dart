import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<MarketingCluesState> buildReducer() {
  return asReducer(
    <Object, Reducer<MarketingCluesState>>{
      MarketingCluesAction.action: _onAction,
      MarketingCluesAction.init: _onInit
    },
  );
}

MarketingCluesState _onAction(MarketingCluesState state, Action action) {
  final MarketingCluesState newState = state.clone();
  return newState;
}
MarketingCluesState _onInit(MarketingCluesState state, Action action) {
  final MarketingCluesState newState = state.clone();
  newState.liststate = action.payload;
  return newState;
}