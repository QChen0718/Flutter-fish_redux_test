import 'package:fish_redux/fish_redux.dart';
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
//  ctx.state.titlename = '你好';
//  ctx.state.subItemState.pushtitle = ctx.state.titlename;
}