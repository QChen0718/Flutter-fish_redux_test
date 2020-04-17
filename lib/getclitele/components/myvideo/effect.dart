import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<MyVideoState> buildEffect() {
  return combineEffects(<Object, Effect<MyVideoState>>{
    MyVideoAction.action: _onAction,
  });
}

void _onAction(Action action, Context<MyVideoState> ctx) {
}
