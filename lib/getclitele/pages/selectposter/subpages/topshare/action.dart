import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/topsharecell/state.dart';

//TODO replace with your own action
enum TopShareAction { action ,init}

class TopShareActionCreator {
  static Action onAction() {
    return const Action(TopShareAction.action);
  }
  static Action onInit(List<TopShareCellState> liststate) {
    return Action(TopShareAction.init,payload: liststate);
  }
}
