import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/my/pages/userset/adapter.dart';
import 'package:flutter_fish_redux_router_qt/my/pages/userset/components/state.dart';

class UsersetState extends MutableSource implements Cloneable<UsersetState> {
  String title;
  ItemState itemState;
  List<String> itemtitles;
  List<ItemState> setitems;
  String logout;
  @override
  UsersetState clone() {
    return UsersetState()
    ..title = title
    ..itemState = itemState
    ..itemtitles = itemtitles
    ..logout = logout;
  }
// 对应 index 下的数据
  @override
  Object getItemData(int index) {
    // TODO: implement getItemData
    return setitems[index];
  }
// 对应 index 下的数据类型
  @override
  String getItemType(int index) {
    // TODO: implement getItemType
    return UsersetAdapter.settingType;
  }
// 数据源长度
  @override
  // TODO: implement itemCount
  int get itemCount => setitems?.length ?? 0;
// 对应 index 下的数据如何修改
  @override
  void setItemData(int index, Object data) {
    // TODO: implement setItemData
    setitems[index] = data;
  }
}

UsersetState initState(Map<String, dynamic> args) {
  List<String> itemtitles = ['修改登录密码','清理缓存','开启消息提醒','帮助与反馈','关于壹财富','用户协议','版本号','退出登录'];
  return UsersetState()
  ..title = '设置'
  ..itemtitles = itemtitles
  ..logout = '退出登录';
}
