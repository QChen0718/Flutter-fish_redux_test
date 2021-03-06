import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<MenucellState> buildEffect() {
  return combineEffects(<Object, Effect<MenucellState>>{
    MenucellAction.action: _onAction,
  });
}

void _onAction(Action action, Context<MenucellState> ctx) {
}
