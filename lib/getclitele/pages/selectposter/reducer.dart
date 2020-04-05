import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<SelectPosterState> buildReducer() {
  return asReducer(
    <Object, Reducer<SelectPosterState>>{
      SelectPosterAction.action: _onAction,
    },
  );
}

SelectPosterState _onAction(SelectPosterState state, Action action) {
  final SelectPosterState newState = state.clone();
  return newState;
}
