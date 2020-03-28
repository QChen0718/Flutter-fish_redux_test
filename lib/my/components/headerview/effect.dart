import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/my/components/headerview/action.dart';

import 'state.dart';

Effect<HeaderviewState> buildEffect() {
  return combineEffects(<Object, Effect<HeaderviewState>>{
    HeaderviewAction.action: _onAction,
  });
}

void _onAction(Action action, Context<HeaderviewState> ctx) {
}
