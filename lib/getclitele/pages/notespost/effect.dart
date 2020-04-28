import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/notelistcell/state.dart';
import 'action.dart';
import 'state.dart';

Effect<NotePostState> buildEffect() {
  return combineEffects(<Object, Effect<NotePostState>>{
    NotePostAction.action: _onAction,
    Lifecycle.initState: _onInit
  });
}

void _onAction(Action action, Context<NotePostState> ctx) {
}
void _onInit(Action action, Context<NotePostState> ctx) {

  for(int i=0;i<3;i++){
    NoteListCellState noteListCellState = NoteListCellState();
    noteListCellState.datestr='';
    noteListCellState.contentstr='笔记内容';
    ctx.state.liststate.add(noteListCellState);
  }
}