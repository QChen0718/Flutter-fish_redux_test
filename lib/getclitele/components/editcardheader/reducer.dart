import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<EditCardHeaderviewState> buildReducer() {
  return asReducer(
    <Object, Reducer<EditCardHeaderviewState>>{
      EditCardHeaderviewAction.action: _onAction,
      EditCardHeaderviewAction.updatePhoto: _onUpdatePhoto
    },
  );
}

EditCardHeaderviewState _onAction(EditCardHeaderviewState state, Action action) {
  final EditCardHeaderviewState newState = state.clone();
  return newState;
}

EditCardHeaderviewState _onUpdatePhoto(EditCardHeaderviewState state, Action action) {
  final EditCardHeaderviewState newState = state.clone();
  newState.headerfile = action.payload;
  return newState;
}