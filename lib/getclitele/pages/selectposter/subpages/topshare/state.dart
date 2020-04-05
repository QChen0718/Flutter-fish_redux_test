import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/topsharecell/state.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/selectposter/subpages/topshare/adapter.dart';

class TopShareState extends MutableSource implements Cloneable<TopShareState> {

  List<TopShareCellState> topliststate;
  @override
  TopShareState clone() {
    return TopShareState()
    ..topliststate = topliststate;
  }

  @override
  Object getItemData(int index) {
    // TODO: implement getItemData
    return topliststate[index];
  }

  @override
  String getItemType(int index) {
    // TODO: implement getItemType
    return TopShareAdapter.topsharecell;
  }

  @override
  // TODO: implement itemCount
  int get itemCount => topliststate?.length ?? 0;

  @override
  void setItemData(int index, Object data) {
    // TODO: implement setItemData
    topliststate[index] = data;
  }
}

TopShareState initState(Map<String, dynamic> args) {
  return TopShareState();
}
