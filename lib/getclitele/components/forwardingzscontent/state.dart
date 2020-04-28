import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/forwardingzs/state.dart';

class ForWardingzsContentState implements Cloneable<ForWardingzsContentState> {

  String imagename = 'images/backTipsImage.webp';
  @override
  ForWardingzsContentState clone() {
    return ForWardingzsContentState()
    ..imagename = imagename;
  }
}

//ForWardingzsContentState initStates(Map<String, dynamic> args) {
//  return ForWardingzsContentState();
//}

class ForWardingzsContentCommentor extends ConnOp<ForwardingZSState,ForWardingzsContentState> {
  @override
  ForWardingzsContentState get(ForwardingZSState state) {
    // TODO: implement get
    return state.forWardingzsContentState;
  }
  @override
  void set(ForwardingZSState state, ForWardingzsContentState subState) {
    // TODO: implement set
    state.forWardingzsContentState = subState;
  }
}