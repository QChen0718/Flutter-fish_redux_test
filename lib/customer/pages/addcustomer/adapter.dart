import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/customer/components/addcustomercell/component.dart';
import 'package:flutter_fish_redux_router_qt/customer/pages/addcustomer/state.dart';

class addcutomerAdapter extends SourceFlowAdapter<addcustomerState> {
  static const addcustomercellid = 'addcustomercellid';
  addcutomerAdapter()
      : super(
          pool: <String, Component<Object>>{
            addcustomercellid:AddCustomerCellComponent()
          },
  );
}

