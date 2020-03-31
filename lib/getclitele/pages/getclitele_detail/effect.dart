import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<GetCliteleDetailState> buildEffect() {
  return combineEffects(<Object, Effect<GetCliteleDetailState>>{
    GetCliteleDetailAction.action: _onAction,
  });
}

void _onAction(Action action, Context<GetCliteleDetailState> ctx) {
}
