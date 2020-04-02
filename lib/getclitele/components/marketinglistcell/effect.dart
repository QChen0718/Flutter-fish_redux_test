import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<MarketingListcellState> buildEffect() {
  return combineEffects(<Object, Effect<MarketingListcellState>>{
    MarketingListcellAction.action: _onAction,
  });
}

void _onAction(Action action, Context<MarketingListcellState> ctx) {
}
