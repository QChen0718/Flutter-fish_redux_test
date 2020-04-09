import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<EditCardState> buildReducer() {
  return asReducer(
    <Object, Reducer<EditCardState>>{
      EditCardAction.action: _onAction,
    },
  );
}

EditCardState _onAction(EditCardState state, Action action) {
  final EditCardState newState = state.clone();
  return newState;
}
