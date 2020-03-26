import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/my/state.dart';

class PushMessageState implements Cloneable<PushMessageState> {
  String commpanyicon;
  List<String> messagetitles;
  @override
  PushMessageState clone() {
    return PushMessageState()
    ..commpanyicon = commpanyicon
    ..messagetitles = messagetitles;
  }
}

class PushConnectort extends ConnOp<MyState,PushMessageState>{
  @override
  PushMessageState get(MyState state) {
    // TODO: implement get
    return state.pushMessageState;
  }
  @override
  void set(MyState state, PushMessageState subState) {
    // TODO: implement set
    state.pushMessageState=subState;

  }
}