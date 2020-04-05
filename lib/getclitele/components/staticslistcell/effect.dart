import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<StaticsListcellState> buildEffect() {
  return combineEffects(<Object, Effect<StaticsListcellState>>{
    StaticsListcellAction.action: _onAction,
  });
}

void _onAction(Action action, Context<StaticsListcellState> ctx) {
}
