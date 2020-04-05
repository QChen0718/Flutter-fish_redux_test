import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<PosterDetailState> buildEffect() {
  return combineEffects(<Object, Effect<PosterDetailState>>{
    PosterDetailAction.action: _onAction,
  });
}

void _onAction(Action action, Context<PosterDetailState> ctx) {
}
