import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<MarkingCellState> buildEffect() {
  return combineEffects(<Object, Effect<MarkingCellState>>{
    MarkingCellAction.action: _onAction,
  });
}

void _onAction(Action action, Context<MarkingCellState> ctx) {
}
