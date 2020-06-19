import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/customer/pages/addcustomer/state.dart';

class AddCustomerCellState implements Cloneable<AddCustomerCellState> {

  String addcustomerTitle;
  String placeholder;
  String addcustomerContent;
  @override
  AddCustomerCellState clone() {
    return AddCustomerCellState()
    ..addcustomerTitle = addcustomerTitle
    ..placeholder = placeholder
    ..addcustomerContent = addcustomerContent;
  }
}

class AddCustomerConnector extends ConnOp<addcustomerState,AddCustomerCellState>{
  @override
  void set(addcustomerState state, AddCustomerCellState subState) {
    // TODO: implement set
    state.cellState = subState;
  }
  @override
  AddCustomerCellState get(addcustomerState state) {
    // TODO: implement get
    return state.cellState;
  }
}
