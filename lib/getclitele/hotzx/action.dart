import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/hotzx/components/state.dart';

//TODO replace with your own action
enum HotzxAction { action,update,init }

class HotzxActionCreator {
  static Action onAction() {
    return const Action(HotzxAction.action);
  }
  static Action onUpdate() {
    return  Action(HotzxAction.update);
  }
  static Action onInit(HeaderState substate) {
    return  Action(HotzxAction.init,payload: substate);
  }
}
