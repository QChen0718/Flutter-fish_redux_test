import 'package:fish_redux/fish_redux.dart';

class TopShareCellState implements Cloneable<TopShareCellState> {
  String cavorimagename;
  String toptitle;
  String topcontent;
  @override
  TopShareCellState clone() {
    return TopShareCellState()
    ..cavorimagename = cavorimagename
    ..toptitle = toptitle
    ..topcontent = topcontent;
  }
}

TopShareCellState initState(Map<String, dynamic> args) {
  return TopShareCellState();
}
