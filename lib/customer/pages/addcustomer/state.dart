import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/customer/components/addcustomercell/state.dart';
import 'package:flutter_fish_redux_router_qt/customer/model/addCustomermodel.dart';
import 'package:flutter_fish_redux_router_qt/customer/pages/addcustomer/adapter.dart';

class addcustomerState extends MutableSource implements Cloneable<addcustomerState> {
  AddCustomerCellState cellState;
  List<dynamic> states;
  List<AddCustomerModel> models = [];
  @override
  addcustomerState clone() {
    return addcustomerState()
    ..cellState = cellState
    ..states = states
    ..models = models;
  }

  @override
  Object getItemData(int index) {
    // TODO: implement getItemData
    return states[index];
  }

  @override
  String getItemType(int index) {
    // TODO: implement getItemType
    return addcutomerAdapter.addcustomercellid;
  }

  @override
  // TODO: implement itemCount
  int get itemCount => states.length ?? 0;

  @override
  void setItemData(int index, Object data) {
    // TODO: implement setItemData
    states[index] = data;
  }
}

addcustomerState initState(Map<String, dynamic> args) {
  var models = [
    AddCustomerModel(title: '姓名',placeholder: '请输入姓名'),
    AddCustomerModel(title: '性别',placeholder: '请输入性别'),
    AddCustomerModel(title: '手机号',placeholder: '请输入手机号'),
    AddCustomerModel(title: '身份证号',placeholder: '请输入身份证号码'),
    AddCustomerModel(title: '来源'),
    AddCustomerModel(title: '微信号',placeholder: '请输入微信号'),
    AddCustomerModel(title: '微信昵称',placeholder: '请输入微信昵称')
  ];
  return addcustomerState()
  ..models = models;
}
