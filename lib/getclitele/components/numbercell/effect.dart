import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<CliteleNumberState> buildEffect() {
  return combineEffects(<Object, Effect<CliteleNumberState>>{
    CliteleNumberAction.action: _onAction,
  });
}

void _onAction(Action action, Context<CliteleNumberState> ctx) {
}
