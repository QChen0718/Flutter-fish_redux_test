import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<OrdercellState> buildEffect() {
  return combineEffects(<Object, Effect<OrdercellState>>{
    OrdercellAction.action: _onAction,
  });
}

void _onAction(Action action, Context<OrdercellState> ctx) {
}
