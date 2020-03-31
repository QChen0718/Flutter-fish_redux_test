import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/customer/state.dart';

class ScreeningState implements Cloneable<ScreeningState> {
  List<String> titles = ['是否注册APP','是否有手机号','是否成交','是否有微信号','来源','是否有标签','标签'];
  List<List> items=[['是','否'],['是','否'],['是','否'],['是','否'],['名片分享添加','产品分享添加','每日财经添加','APP注册绑定'],['是','否'],['偏好房地产','拆迁户','基础设施']];

  @override
  ScreeningState clone() {
    return ScreeningState();
  }
}

class ScreeningConnector extends ConnOp<CustomerState,ScreeningState>{
  @override
  ScreeningState get(CustomerState state) {
    // TODO: implement get
    ScreeningState newstate = ScreeningState();
    if(state.screeningState!=null){
      newstate = state.screeningState;
    }
    return newstate;
  }
  @override
  void set(CustomerState state, ScreeningState subState) {
    // TODO: implement set
    state.screeningState = subState;
  }
}