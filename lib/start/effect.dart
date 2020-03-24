import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<StartState> buildEffect() {
  return combineEffects(<Object, Effect<StartState>>{
    StartAction.action: _onAction,
  });
}

void _onAction(Action action, Context<StartState> ctx) {
}
