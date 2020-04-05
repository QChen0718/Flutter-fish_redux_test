import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/topsharecell/state.dart';
import 'action.dart';
import 'state.dart';

Effect<TopShareState> buildEffect() {
  return combineEffects(<Object, Effect<TopShareState>>{
    TopShareAction.action: _onAction,
    Lifecycle.initState:_onInit
  });
}

void _onAction(Action action, Context<TopShareState> ctx) {
}
void _onInit(Action action, Context<TopShareState> ctx) {
  List<TopShareCellState> liststate = [];
  for(int i=0;i<10;i++){
    TopShareCellState topShareCellState = TopShareCellState();
    liststate.add(topShareCellState);
  }
  ctx.dispatch(TopShareActionCreator.onInit(liststate));
}