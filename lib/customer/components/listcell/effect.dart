import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<CustomerListcellState> buildEffect() {
  return combineEffects(<Object, Effect<CustomerListcellState>>{
    CustomerListcellAction.action: _onAction,
  });
}

void _onAction(Action action, Context<CustomerListcellState> ctx) {
}
