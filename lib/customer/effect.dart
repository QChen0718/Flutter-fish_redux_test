import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<CustomerState> buildEffect() {
  return combineEffects(<Object, Effect<CustomerState>>{
    CustomerAction.action: _onAction,
  });
}

void _onAction(Action action, Context<CustomerState> ctx) {
}
