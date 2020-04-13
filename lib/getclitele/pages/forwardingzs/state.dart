import 'package:fish_redux/fish_redux.dart';

class ForwardingZSState implements Cloneable<ForwardingZSState> {

  String navtitle;
  @override
  ForwardingZSState clone() {
    return ForwardingZSState()
    ..navtitle = navtitle;
  }
}

ForwardingZSState initState(Map<String, dynamic> args) {
  return ForwardingZSState()
  ..navtitle = '转发助手';
}
