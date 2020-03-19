import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/cjzb/state.dart';

class CjcellState implements Cloneable<CjcellState> {
  String celltitle;
  String cellcontent;
  String cellcoverimagename;
  @override
  CjcellState clone() {
    return CjcellState()
    ..celltitle = cellcontent
    ..cellcontent = cellcontent
    ..cellcoverimagename = cellcoverimagename;
  }
}


//这块是父组件与子组件state交互的地方
class CjConnector extends ConnOp<CjzbState,CjcellState> {
  @override
  CjcellState get(CjzbState state){
    CjcellState mstate = CjcellState();
    mstate.celltitle = state.cjcellState.celltitle;
    mstate.cellcontent = state.cjcellState.cellcontent;
    mstate.cellcoverimagename = state.cjcellState.cellcoverimagename;
    return mstate;
  }
  void set(CjzbState state, CjcellState subState) {
    state.cjcellState.celltitle = subState.celltitle;
  }
}