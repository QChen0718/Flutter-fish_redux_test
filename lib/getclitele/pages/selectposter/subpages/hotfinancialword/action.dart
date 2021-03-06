import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/hotfinancialwordcell/state.dart';

//TODO replace with your own action
enum HotFinancialWordAction { action ,init ,refresh, load }

class HotFinancialWordActionCreator {
  static Action onAction() {
    return const Action(HotFinancialWordAction.action);
  }
  static Action onInit(List<HotFinancialWordeCellState> liststate) {
    return Action(HotFinancialWordAction.init,payload: liststate);
  }
  static Action onRefresh(){
    return Action(HotFinancialWordAction.refresh);
  }
  static Action onLoad(){
    return Action(HotFinancialWordAction.load);
  }
}
