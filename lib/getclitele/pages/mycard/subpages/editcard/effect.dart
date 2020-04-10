import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/actions/tost.dart';
import 'action.dart';
import 'state.dart';

Effect<EditCardState> buildEffect() {
  return combineEffects(<Object, Effect<EditCardState>>{
    EditCardAction.action: _onAction,
    EditCardAction.submitClick: _onSubmitClick
  });
}

void _onAction(Action action, Context<EditCardState> ctx) {
}
void _onSubmitClick(Action action, Context<EditCardState> ctx){
    for(int i=0; i<ctx.state.listcardinputdata.length; i++){
      if(ctx.state.listcardinputdata[i]['textcontroller'].text.length == 0){
        Toast.toast(ctx.context,msg: ctx.state.placeholderlist[i]);
        return;
      }
    }
//    提交调取接口
}