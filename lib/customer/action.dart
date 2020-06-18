import 'package:fish_redux/fish_redux.dart';

import 'components/listcell/state.dart';

//TODO replace with your own action
enum CustomerAction { action ,updateData , init}

class CustomerActionCreator {
  static Action onAction() {
    return const Action(CustomerAction.action);
  }
  static Action onUpdateData() {
    return Action(CustomerAction.updateData);
  }
  static Action onInit(List<CustomerListcellState> cellstates,String totalstr) {
    return Action(CustomerAction.init,payload:{'list':cellstates,'total':totalstr});
  }
}
