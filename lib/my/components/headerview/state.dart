import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/my/state.dart';

class HeaderviewState implements Cloneable<HeaderviewState> {
  String headerphotoname; //头像
  String username;  //用户名
  String viplevelicon;  //会员等级图标
  bool isstaff; //是否是员工
  String headerbgimagename; //背景图片
  List<String> itemlist;
  @override
  HeaderviewState clone() {
    return HeaderviewState()
    ..headerphotoname = headerphotoname
    ..username = username
    ..viplevelicon = viplevelicon
    ..isstaff = isstaff
    ..headerbgimagename = headerbgimagename
    ..itemlist = itemlist;
  }
}

//扩展父类，重写set，get方法
class HeaderviewConnector extends ConnOp<MyState,HeaderviewState>{
  @override
  HeaderviewState get(MyState state) {
    // TODO: implement get
    return state.headerviewState;
  }

  @override
  void set(MyState state, HeaderviewState subState) {
    // TODO: implement set
    state.headerviewState = subState;
  }

}