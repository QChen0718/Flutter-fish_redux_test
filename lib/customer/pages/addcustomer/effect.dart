import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/customer/components/addcustomercell/state.dart';
import 'action.dart';
import 'state.dart';

Effect<addcustomerState> buildEffect() {
  return combineEffects(<Object, Effect<addcustomerState>>{
    addcustomerAction.action: _onAction,
    Lifecycle.initState: _onInit
  });
}

void _onAction(Action action, Context<addcustomerState> ctx) {
}
void _onInit(Action action, Context<addcustomerState> ctx) {
  List<AddCustomerCellState> _states = [];
  ctx.state.models.forEach((model){
    AddCustomerCellState state = AddCustomerCellState();
    state.addcustomerTitle = model.title;
    state.placeholder = model.placeholder;
    _states.add(state);
  });
  ctx.dispatch(addcustomerActionCreator.onInitui(_states));
}