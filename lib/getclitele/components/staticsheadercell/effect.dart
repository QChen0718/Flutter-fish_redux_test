import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<StaticsHeaderState> buildEffect() {
  return combineEffects(<Object, Effect<StaticsHeaderState>>{
    StaticsHeaderAction.action: _onAction,
  });
}

void _onAction(Action action, Context<StaticsHeaderState> ctx) {
}
