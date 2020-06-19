import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/customer/components/addcustomercell/state.dart';

//TODO replace with your own action
enum addcustomerAction {
  action ,
  initui
}

class addcustomerActionCreator {
  static Action onAction() {
    return const Action(addcustomerAction.action);
  }
  static Action onInitui(List<AddCustomerCellState> states) {

    return Action(addcustomerAction.initui,payload: states);
  }
}
