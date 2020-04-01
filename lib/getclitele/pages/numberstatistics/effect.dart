import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<NumberStatisticsState> buildEffect() {
  return combineEffects(<Object, Effect<NumberStatisticsState>>{
    NumberStatisticsAction.action: _onAction,
  });
}

void _onAction(Action action, Context<NumberStatisticsState> ctx) {
}
