import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/my/state.dart';

class PushMessageState implements Cloneable<PushMessageState> {

  @override
  PushMessageState clone() {
    return PushMessageState();
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