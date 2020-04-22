import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/models/cjzblist.dart';

import 'components/state.dart';

//TODO replace with your own action
enum CjzbAction { action,onjumpDetail,updateData ,onInit,refresh,load}

class CjzbActionCreator {
  static Action onAction() {
    return const Action(CjzbAction.action);
  }
  static Action onJumpDetail() {
    return Action(CjzbAction.onjumpDetail);
  }
  static Action onUpdateData(String newtitle){
    return Action(CjzbAction.updateData);
  }
  static Action onInit(List<CjcellState> localNavList){
    return Action(CjzbAction.onInit,payload: localNavList);
  }
  static Action onRefresh(){
    return Action(CjzbAction.refresh);
  }
  static Action onLoad(){
    return Action(CjzbAction.load);
  }
}
