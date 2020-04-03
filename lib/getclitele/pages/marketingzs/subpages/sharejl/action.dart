import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/sharejlcell/state.dart';

//TODO replace with your own action
enum SharejlAction { action , init}

class SharejlActionCreator {
  static Action onAction() {
    return const Action(SharejlAction.action);
  }
  static Action onInit(List<SharejlCellState> liststate) {
    return Action(SharejlAction.init,payload: liststate);
  }
}
