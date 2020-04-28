import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<NoteListCellState> buildEffect() {
  return combineEffects(<Object, Effect<NoteListCellState>>{
    NoteListCellAction.action: _onAction,
  });
}

void _onAction(Action action, Context<NoteListCellState> ctx) {
}
