import 'package:fish_redux/fish_redux.dart';

class SharejlCellState implements Cloneable<SharejlCellState> {
  String sharetitle;
  String sharedate;
  String lookpersion = '查看次数';
  String looknumber = '查看人数';
  int lookcount;
  int persioncount;
  @override
  SharejlCellState clone() {
    return SharejlCellState();
  }
}

SharejlCellState initState(Map<String, dynamic> args) {
  return SharejlCellState();
}
