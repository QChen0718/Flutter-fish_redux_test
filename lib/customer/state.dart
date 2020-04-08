import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/customer/adapter.dart';
import 'package:flutter_fish_redux_router_qt/customer/components/filter/state.dart';
import 'package:flutter_fish_redux_router_qt/customer/components/listcell/state.dart';
import 'package:flutter_fish_redux_router_qt/customer/components/screening/state.dart';
import 'package:flutter_fish_redux_router_qt/customer/components/searchbar/state.dart';

class CustomerState extends MutableSource implements Cloneable<CustomerState> {
  String navtitle;
  String lefticonname;
  String righticonname;
  SearchBarState searchBarState;
  FilterState filterState;
  List<CustomerListcellState> customercells;
  @override
  CustomerState clone() {
    return CustomerState()
    ..navtitle = navtitle
    ..lefticonname = lefticonname
    ..righticonname = righticonname
    ..searchBarState = searchBarState
    ..filterState = filterState
    ..customercells = customercells;
  }

  @override
  Object getItemData(int index) {
    // TODO: implement getItemData
    return customercells[index];
  }

  @override
  String getItemType(int index) {
    // TODO: implement getItemType
    return CustomerAdapter.customerType;
  }

  @override
  // TODO: implement itemCount
  int get itemCount => customercells?.length ?? 0;

  @override
  void setItemData(int index, Object data) {
    // TODO: implement setItemData
    customercells[index] = data;
  }
}

CustomerState initState(Map<String, dynamic> args) {
  SearchBarState searchBarState = SearchBarState();
  searchBarState.searchtitle = '请输入客户名称或标签';
  searchBarState.searchicon = 'images/search_icon.webp';
  searchBarState.closeicon = 'images/close_icon.webp';
  FilterState filterState = FilterState();
  filterState.titles = ['默认排序','持仓客户','近期到账','筛选'];
  filterState.isshow = true;
  filterState.filteritems = ['默认排序','最近跟进','最近访问','最新添加','最新分配'];
  filterState.filterselectname = 'images/select_filter_btn.webp';
  filterState.filtericonname = 'images/filter_icon.webp';
  filterState.arrow_bottom = 'images/arrow_bottom.webp';
  return CustomerState()
  ..navtitle = '我的客户'
  ..lefticonname = 'images/message_icon.webp'
  ..righticonname = 'images/addpersion_icon.webp'
  ..searchBarState = searchBarState
  ..filterState = filterState;
}
