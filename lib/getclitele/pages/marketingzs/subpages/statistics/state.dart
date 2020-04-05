import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/staticsheadercell/state.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/marketingzs/subpages/statistics/adapter.dart';

class StatisticsState extends MutableSource implements Cloneable<StatisticsState> {
  StaticsHeaderState staticsHeaderState;
  List<dynamic>listcell;
  @override
  StatisticsState clone() {
    return StatisticsState()
    ..listcell = listcell
    ..staticsHeaderState = staticsHeaderState;
  }

  @override
  Object getItemData(int index) {
    // TODO: implement getItemData
    return listcell[index];
  }

  @override
  String getItemType(int index) {
    // TODO: implement getItemType
    switch (index){
      case 0:
       return StatisticsAdapter.header;
        break;
      case 1:
        return StatisticsAdapter.section;
        break;
      default:
        return StatisticsAdapter.statisticscell;
        break;
    }
  }

  @override
  // TODO: implement itemCount
  int get itemCount => listcell?.length ?? 0;

  @override
  void setItemData(int index, Object data) {
    // TODO: implement setItemData
    listcell[index] = data;
  }
}

StatisticsState initState(Map<String, dynamic> args) {
  StaticsHeaderState staticsHeaderState = StaticsHeaderState();

  return StatisticsState()
  ..staticsHeaderState = staticsHeaderState;
}
