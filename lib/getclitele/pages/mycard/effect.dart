import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<MyCardState> buildEffect() {
  return combineEffects(<Object, Effect<MyCardState>>{
    MyCardAction.action: _onAction,
  });
}

void _onAction(Action action, Context<MyCardState> ctx) {
}
