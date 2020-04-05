import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/hotfinancialwordcell/state.dart';
import 'action.dart';
import 'state.dart';

Effect<HotFinancialWordState> buildEffect() {
  return combineEffects(<Object, Effect<HotFinancialWordState>>{
    HotFinancialWordAction.action: _onAction,

    Lifecycle.initState:_onInit
  });
}

void _onAction(Action action, Context<HotFinancialWordState> ctx) {
}
void _onInit(Action action, Context<HotFinancialWordState> ctx) {
  List<HotFinancialWordeCellState> listcellstate = [];
  for(int i=0; i<10; i++){
    HotFinancialWordeCellState hotFinancialWordeCellState = HotFinancialWordeCellState();
    hotFinancialWordeCellState.posterphoto = 'images/poster_photo.webp';
    hotFinancialWordeCellState.postername = '市盈率';
    listcellstate.add(hotFinancialWordeCellState);
  }
  ctx.dispatch(HotFinancialWordActionCreator.onInit(listcellstate));
}
