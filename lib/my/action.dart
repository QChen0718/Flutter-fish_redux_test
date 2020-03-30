import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/my/components/headerview/state.dart';


//TODO replace with your own action
enum MyAction { action,init,jumpSetpage }

class MyActionCreator {
  static Action onAction() {
    return const Action(MyAction.action);
  }
  static Action onInit(Map<String,dynamic> data){
    return Action(MyAction.init,payload: data);
  }
  static Action onJumpSetpage(){
    return Action(MyAction.jumpSetpage);
  }

}
