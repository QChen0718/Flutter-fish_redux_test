import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum MyCardAction { action,phoneClick }

class MyCardActionCreator {
  static Action onAction(int index) {
    return  Action(MyCardAction.action,payload: index);
  }
//  添加拨打电话事件
  static Action onPhoneClick(){
    return Action(MyCardAction.phoneClick);
  }
}
