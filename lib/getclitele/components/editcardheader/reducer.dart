import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<EditCardHeaderviewState> buildReducer() {
  return asReducer(
    <Object, Reducer<EditCardHeaderviewState>>{
      EditCardHeaderviewAction.action: _onAction,
    },
  );
}

EditCardHeaderviewState _onAction(EditCardHeaderviewState state, Action action) {
  final EditCardHeaderviewState newState = state.clone();
  return newState;
}
