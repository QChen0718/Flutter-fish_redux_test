import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/my/pages/userset/components/state.dart';
import 'action.dart';
import 'state.dart';

Effect<UsersetState> buildEffect() {
  return combineEffects(<Object, Effect<UsersetState>>{
    UsersetAction.action: _onAction,
    Lifecycle.initState: _onInit
  });
}

void _onAction(Action action, Context<UsersetState> ctx) {
}

void _onInit(Action action, Context<UsersetState> ctx) {
  List<ItemState> itemsdata = [];
  ctx.state.itemtitles.forEach((value){
    itemsdata.add(ItemState(celltitle: value,cell_arrow: 'images/nomal_arrow.webp',celltype: value == '退出登录'? false:true));
  });
  ctx.dispatch(UsersetActionCreator.onInit(itemsdata));
}