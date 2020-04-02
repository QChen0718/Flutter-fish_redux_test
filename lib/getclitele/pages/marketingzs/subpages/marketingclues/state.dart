import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/marketinglistcell/state.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/marketingzs/subpages/marketingclues/adapter.dart';

class MarketingCluesState extends MutableSource implements Cloneable<MarketingCluesState> {

  List<MarketingListcellState> liststate;
  @override
  MarketingCluesState clone() {
    return MarketingCluesState()
    ..liststate = liststate;
  }

  @override
  Object getItemData(int index) {
    // TODO: implement getItemData
    return liststate[index];
  }

  @override
  String getItemType(int index) {
    // TODO: implement getItemType
    return MarketingCluesAdapter.marketingcell;
  }

  @override
  // TODO: implement itemCount
  int get itemCount => liststate?.length ?? 0;

  @override
  void setItemData(int index, Object data) {
    // TODO: implement setItemData
    liststate[index] = data;
  }
}

MarketingCluesState initState(Map<String, dynamic> args) {
  return MarketingCluesState();
}
