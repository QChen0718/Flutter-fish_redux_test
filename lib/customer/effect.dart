import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/customer/components/listcell/state.dart';
import 'action.dart';
import 'state.dart';

Effect<CustomerState> buildEffect() {
  return combineEffects(<Object, Effect<CustomerState>>{
    CustomerAction.action: _onAction,
    Lifecycle.initState: _onInit
  });
}

void _onAction(Action action, Context<CustomerState> ctx) {
}

void _onInit(Action action, Context<CustomerState> ctx) {
  List<CustomerListcellState> listcell = [];
  for(int i=0;i<10;i++){
    CustomerListcellState customerListcellState = CustomerListcellState();
    customerListcellState.cellheaderimagename = 'images/header_photo.webp';
    customerListcellState.username = '王强';
    customerListcellState.date = '最近访问：2020-02-24 15：47';
    customerListcellState.user_items = ['偏好房地产','拆迁户'];
    customerListcellState.numbers = '1256';
    customerListcellState.unit = '万';
    customerListcellState.description ='累计交易';
    listcell.add(customerListcellState);
  }

  ctx.dispatch(CustomerActionCreator.onInit(listcell));
}