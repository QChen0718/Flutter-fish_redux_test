import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<CliteleItemCellState> buildEffect() {
  return combineEffects(<Object, Effect<CliteleItemCellState>>{
    CliteleItemCellAction.action: _onAction,
  });
}

void _onAction(Action action, Context<CliteleItemCellState> ctx) {
}
