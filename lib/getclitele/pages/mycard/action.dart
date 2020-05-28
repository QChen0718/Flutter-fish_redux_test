import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/models/cardmodel.dart';

//TODO replace with your own action
enum MyCardAction { action,phoneClick,initData}

class MyCardActionCreator {
  static Action onAction(int index) {
    return  Action(MyCardAction.action,payload: index);
  }
//  添加拨打电话事件
  static Action onPhoneClick(String phonenumber){
    return Action(MyCardAction.phoneClick,payload: phonenumber);
  }
  static Action onInitData(CardDataModel model){
    return Action(MyCardAction.initData,payload: model);
  }
}
