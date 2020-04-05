import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/sharejlcell/state.dart';
import 'action.dart';
import 'state.dart';

Effect<SharejlState> buildEffect() {
  return combineEffects(<Object, Effect<SharejlState>>{
    SharejlAction.action: _onAction,
    Lifecycle.initState: _onInit
  });
}

void _onAction(Action action, Context<SharejlState> ctx) {
}
void _onInit(Action action, Context<SharejlState> ctx) {
  List<SharejlCellState> liststate = [];
  for(int i=0;i<10;i++){
    SharejlCellState sharejlCellState = SharejlCellState();
    sharejlCellState.sharetitle = '财经早知道2019-10-22';
    sharejlCellState.sharedate = '10-22 14:57';
    sharejlCellState.lookcount = 5;
    sharejlCellState.persioncount = 2;
    liststate.add(sharejlCellState);
  }
  ctx.dispatch(SharejlActionCreator.onInit(liststate));
}