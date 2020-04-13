import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<NotePostState> buildReducer() {
  return asReducer(
    <Object, Reducer<NotePostState>>{
      NotePostAction.action: _onAction,
    },
  );
}

NotePostState _onAction(NotePostState state, Action action) {
  final NotePostState newState = state.clone();
  return newState;
}
