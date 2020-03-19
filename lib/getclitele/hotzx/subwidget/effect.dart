import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<SubItemState> buildEffect() {
  return combineEffects(<Object, Effect<SubItemState>>{
    SubItemAction.action: _onAction,
  });
}

void _onAction(Action action, Context<SubItemState> ctx) {
}
