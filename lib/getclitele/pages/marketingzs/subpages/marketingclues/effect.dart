import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<MarketingCluesState> buildEffect() {
  return combineEffects(<Object, Effect<MarketingCluesState>>{
    MarketingCluesAction.action: _onAction,
  });
}

void _onAction(Action action, Context<MarketingCluesState> ctx) {
}
