import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<SharejlCellState> buildEffect() {
  return combineEffects(<Object, Effect<SharejlCellState>>{
    SharejlCellAction.action: _onAction,
  });
}

void _onAction(Action action, Context<SharejlCellState> ctx) {
}
