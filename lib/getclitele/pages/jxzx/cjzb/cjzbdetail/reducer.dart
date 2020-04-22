import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<CjzbDetailState> buildReducer() {
  return asReducer(
    <Object, Reducer<CjzbDetailState>>{
      CjzbDetailAction.action: _onAction,
      CjzbDetailAction.updateTitle: _onUpdateTitle
    },
  );
}

CjzbDetailState _onAction(CjzbDetailState state, Action action) {
  final CjzbDetailState newState = state.clone();
  return newState;
}

CjzbDetailState _onUpdateTitle(CjzbDetailState state, Action action) {
  final CjzbDetailState newState = state.clone();
  newState.navtitle = action.payload;
  return newState;
}