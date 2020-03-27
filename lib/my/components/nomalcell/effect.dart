import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<NomalcellState> buildEffect() {
  return combineEffects(<Object, Effect<NomalcellState>>{
    NomalcellAction.action: _onAction,
  });
}

void _onAction(Action action, Context<NomalcellState> ctx) {
}
