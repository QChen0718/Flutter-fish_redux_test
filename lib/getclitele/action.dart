import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum GetCliteleAction { action, jumpDetail, onInit }

class GetCliteleActionCreator {
  static Action onAction() {
    return const Action(GetCliteleAction.action);
  }
  static Action onJumpDetail(){
    return Action(GetCliteleAction.jumpDetail);
  }
  static Action onInit(Map<String,dynamic> datadict){
    return Action(GetCliteleAction.onInit,payload: datadict);
  }
}
