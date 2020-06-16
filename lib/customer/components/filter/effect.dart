import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/actions/notificationcenter.dart';
import 'package:flutter_fish_redux_router_qt/main/state.dart';
import 'package:flutter_fish_redux_router_qt/singleton/khsingleton.dart';
import 'action.dart';
import 'state.dart';

Effect<FilterState> buildEffect() {
  return combineEffects(<Object, Effect<FilterState>>{
    FilterAction.action: _onAction,
    FilterAction.onpenDrawer: _onOpenDrawer
  });
}

void _onAction(Action action, Context<FilterState> ctx) {
  KHSingleton.getInstance().customerQueryType = action.payload;
  NotificationCenter.instance.postNotification("updateCustomerList", null);
}
void _onOpenDrawer(Action action, Context<FilterState> ctx){
  MainState.cscaffoldKey.currentState.openEndDrawer();
}
