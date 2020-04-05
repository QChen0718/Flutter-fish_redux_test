import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<SelectPosterState> buildEffect() {
  return combineEffects(<Object, Effect<SelectPosterState>>{
    SelectPosterAction.action: _onAction,
  });
}

void _onAction(Action action, Context<SelectPosterState> ctx) {
}
