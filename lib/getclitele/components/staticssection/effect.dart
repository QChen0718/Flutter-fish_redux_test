import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<StaticsSectionState> buildEffect() {
  return combineEffects(<Object, Effect<StaticsSectionState>>{
    StaticsSectionAction.action: _onAction,
  });
}

void _onAction(Action action, Context<StaticsSectionState> ctx) {
}
