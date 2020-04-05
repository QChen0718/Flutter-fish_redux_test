import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<YCFClimateState> buildEffect() {
  return combineEffects(<Object, Effect<YCFClimateState>>{
    YCFClimateAction.action: _onAction,
  });
}

void _onAction(Action action, Context<YCFClimateState> ctx) {
}
