import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_fish_redux_router_qt/actions/nodata.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/hotfinancialwordcell/state.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/selectposter/subpages/hotfinancialword/adapter.dart';
import 'package:flutter_fish_redux_router_qt/models/postertitlemodel.dart';
class HotFinancialWordState extends MutableSource implements Cloneable<HotFinancialWordState> {

  List<HotFinancialWordeCellState> hotliststate;
  int typeId;
  int pageIndex;
  int pageSize;
  bool isnodata = false;
  LoadState loadState = LoadState.State_Loading;
  //  触发刷新和加载动作
  EasyRefreshController controller = EasyRefreshController();
  @override
  HotFinancialWordState clone() {
    return HotFinancialWordState()
    ..pageIndex = pageIndex
    ..controller = controller
    ..pageSize = pageSize
    ..typeId = typeId
    ..isnodata = isnodata
    ..loadState = loadState;
  }
// cell 的内容赋值方法
  @override
  Object getItemData(int index) {
    // TODO: implement getItemData
    return hotliststate[index];
  }
// 设置不同cell的类型
  @override
  String getItemType(int index) {
    // TODO: implement getItemType
    return HotFinancialWordAdapter.hotfinancialwordcell;
  }
// 设置cell的个数
  @override
  // TODO: implement itemCount
  int get itemCount => hotliststate?.length ?? 0;
//
  @override
  void setItemData(int index, Object data) {
    // TODO: implement setItemData
    hotliststate[index] = data;
  }
}

HotFinancialWordState initState(Map<String, dynamic> args) {
  var model = args['model'] as PostertitleDataModel;
  return HotFinancialWordState()
  ..pageIndex = 1
  ..pageSize = 10
  ..typeId = model.id;
}
