import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<PushMessageState> buildEffect() {
  return combineEffects(<Object, Effect<PushMessageState>>{
    PushMessageAction.action: _onAction,
  });
}

void _onAction(Action action, Context<PushMessageState> ctx) {
}
