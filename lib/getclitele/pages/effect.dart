import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<NewGetCliteleState> buildEffect() {
  return combineEffects(<Object, Effect<NewGetCliteleState>>{
    NewGetCliteleAction.action: _onAction,
  });
}

void _onAction(Action action, Context<NewGetCliteleState> ctx) {
}
