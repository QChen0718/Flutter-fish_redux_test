import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/sharejlcell/state.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/marketingzs/subpages/sharejl/adapter.dart';

class SharejlState extends MutableSource implements Cloneable<SharejlState> {

  List<SharejlCellState> shareliststate;
  @override
  SharejlState clone() {
    return SharejlState()
    ..shareliststate = shareliststate;
  }

  @override
  Object getItemData(int index) {
    // TODO: implement getItemData
    return shareliststate[index];
  }

  @override
  String getItemType(int index) {
    // TODO: implement getItemType
    return SharejlAdapter.sharejlcell;
  }

  @override
  // TODO: implement itemCount
  int get itemCount => shareliststate?.length ?? 0;
// 更新列表的item值
  @override
  void setItemData(int index, Object data) {
    // TODO: implement setItemData
    shareliststate[index] = data;
  }
}

SharejlState initState(Map<String, dynamic> args) {
  return SharejlState();
}
