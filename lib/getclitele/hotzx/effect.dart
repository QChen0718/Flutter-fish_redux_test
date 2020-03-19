import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/hotzx/components/state.dart';
import 'action.dart';
import 'state.dart';

Effect<HotzxState> buildEffect() {
  return combineEffects(<Object, Effect<HotzxState>>{
    HotzxAction.action: _onAction,
    Lifecycle.initState:_init,
  });
}

void _onAction(Action action, Context<HotzxState> ctx) {

}
void _init(Action action, Context<HotzxState> ctx){
  HeaderState headerState = HeaderState();
  headerState.content = "一起看看吧!";
  headerState.celltitle = '下半年大类资产应该如何配置…';
  headerState.datetext = '10月22日 15:06';
  headerState.coverimagename = 'images/Bitmap.webp';

  ctx.dispatch(HotzxActionCreator.onInit(headerState));
}