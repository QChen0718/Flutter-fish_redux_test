import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<ForWardingzsContentState> buildEffect() {
  return combineEffects(<Object, Effect<ForWardingzsContentState>>{
    ForWardingzsContentAction.action: _onAction,
  });
}

void _onAction(Action action, Context<ForWardingzsContentState> ctx) {
}
