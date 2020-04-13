import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<NotePostState> buildEffect() {
  return combineEffects(<Object, Effect<NotePostState>>{
    NotePostAction.action: _onAction,
  });
}

void _onAction(Action action, Context<NotePostState> ctx) {
}
