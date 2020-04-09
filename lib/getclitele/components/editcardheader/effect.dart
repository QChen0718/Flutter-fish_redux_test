import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<EditCardHeaderviewState> buildEffect() {
  return combineEffects(<Object, Effect<EditCardHeaderviewState>>{
    EditCardHeaderviewAction.action: _onAction,
  });
}

void _onAction(Action action, Context<EditCardHeaderviewState> ctx) {
}
