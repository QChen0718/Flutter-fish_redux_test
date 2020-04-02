import 'package:fish_redux/fish_redux.dart';

class SharejlState implements Cloneable<SharejlState> {

  @override
  SharejlState clone() {
    return SharejlState();
  }
}

SharejlState initState(Map<String, dynamic> args) {
  return SharejlState();
}
