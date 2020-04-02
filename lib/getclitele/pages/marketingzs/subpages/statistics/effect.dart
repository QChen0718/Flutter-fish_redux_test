import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<StatisticsState> buildEffect() {
  return combineEffects(<Object, Effect<StatisticsState>>{
    StatisticsAction.action: _onAction,
  });
}

void _onAction(Action action, Context<StatisticsState> ctx) {
}
