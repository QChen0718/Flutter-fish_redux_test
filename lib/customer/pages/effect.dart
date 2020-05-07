import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<CustomerDetailState> buildEffect() {
  return combineEffects(<Object, Effect<CustomerDetailState>>{
    CustomerDetailAction.action: _onAction,
  });
}

void _onAction(Action action, Context<CustomerDetailState> ctx) {
}
