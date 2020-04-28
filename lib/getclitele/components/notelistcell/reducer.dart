import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<NoteListCellState> buildReducer() {
  return asReducer(
    <Object, Reducer<NoteListCellState>>{
      NoteListCellAction.action: _onAction,
    },
  );
}

NoteListCellState _onAction(NoteListCellState state, Action action) {
  final NoteListCellState newState = state.clone();
  return newState;
}
