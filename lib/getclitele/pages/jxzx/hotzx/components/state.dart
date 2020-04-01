//存储视图中的数据的地方，包括初始值的设置，包括与父子组件的交互的地方

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/jxzx/hotzx/state.dart';

class HeaderState implements Cloneable<HeaderState> {
//  bool showHeaderMovie;
  String content;
  String celltitle;
  String datetext;
  String coverimagename;
  @override
  HeaderState clone() {
    return HeaderState()
//    ..showHeaderMovie = showHeaderMovie
    ..content = content
    ..celltitle = celltitle
    ..datetext = datetext
    ..coverimagename = coverimagename;
  }
}
//这块是父组件与子组件state交互的地方
class HeaderConnector extends ConnOp<HotzxState,HeaderState> {
  @override
  HeaderState get(HotzxState state){
    HeaderState mstate = HeaderState();
//    mstate.showHeaderMovie = state.showHeaderMovie;
    mstate.content = state.headerState.content;
    mstate.celltitle = state.headerState.celltitle;
    mstate.datetext = state.headerState.datetext;
    mstate.coverimagename = state.headerState.coverimagename;
    return mstate;
  }
  void set(HotzxState state, HeaderState subState) {
//    state.showHeaderMovie = subState.showHeaderMovie;
  }
}

