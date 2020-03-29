import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/customer/components/listcell/component.dart';
import 'package:flutter_fish_redux_router_qt/customer/state.dart';

class CustomerAdapter extends SourceFlowAdapter<CustomerState> {
  static const customerType = 'customercell';
  CustomerAdapter()
      : super(
          pool: <String, Component<Object>>{
            customerType : CustomerListcellComponent()
          },
  );
}

