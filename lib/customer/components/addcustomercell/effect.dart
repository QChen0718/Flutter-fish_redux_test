import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<AddCustomerCellState> buildEffect() {
  return combineEffects(<Object, Effect<AddCustomerCellState>>{
    AddCustomerCellAction.action: _onAction,
  });
}

void _onAction(Action action, Context<AddCustomerCellState> ctx) {
}
