import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/marketinglistcell/state.dart';

//TODO replace with your own action
enum MarketingCluesAction { action,init }

class MarketingCluesActionCreator {
  static Action onAction() {
    return const Action(MarketingCluesAction.action);
  }
  static Action onInit(List<MarketingListcellState> liststate){
    return Action(MarketingCluesAction.init,payload: liststate);
  }
}
