import 'package:fish_redux/fish_redux.dart';

class SharejlCellState implements Cloneable<SharejlCellState> {

  @override
  SharejlCellState clone() {
    return SharejlCellState();
  }
}

SharejlCellState initState(Map<String, dynamic> args) {
  return SharejlCellState();
}
