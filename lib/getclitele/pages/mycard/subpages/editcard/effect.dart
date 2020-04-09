import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<EditCardState> buildEffect() {
  return combineEffects(<Object, Effect<EditCardState>>{
    EditCardAction.action: _onAction,
  });
}

void _onAction(Action action, Context<EditCardState> ctx) {
}
