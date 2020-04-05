import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<TopShareCellState> buildEffect() {
  return combineEffects(<Object, Effect<TopShareCellState>>{
    TopShareCellAction.action: _onAction,
  });
}

void _onAction(Action action, Context<TopShareCellState> ctx) {
}
