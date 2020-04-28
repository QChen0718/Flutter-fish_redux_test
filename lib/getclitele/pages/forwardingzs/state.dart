import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/forwardingzscontent/state.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/forwardingzsheader/state.dart';

class ForwardingZSState implements Cloneable<ForwardingZSState> {

  String navtitle;
  ForWardingzsHeaderState forWardingzsHeaderState;
  ForWardingzsContentState forWardingzsContentState;
  @override
  ForwardingZSState clone() {
    return ForwardingZSState()
    ..navtitle = navtitle
    ..forWardingzsHeaderState = forWardingzsHeaderState
    ..forWardingzsContentState = forWardingzsContentState;
  }
}

ForwardingZSState initState(Map<String, dynamic> args) {
  ForWardingzsHeaderState forWardingzsHeaderState = ForWardingzsHeaderState();
  ForWardingzsContentState forWardingzsContentState = ForWardingzsContentState();
  return ForwardingZSState()
  ..navtitle = '转发助手'
  ..forWardingzsHeaderState = forWardingzsHeaderState
  ..forWardingzsContentState = forWardingzsContentState;
}
