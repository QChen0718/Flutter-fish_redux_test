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
    liststate.add(sharejlCellState);
  }
  ctx.dispatch(SharejlActionCreator.onInit(liststate));
}