import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum GetCliteleAction { action, jumpDetail }

class GetCliteleActionCreator {
  static Action onAction() {
    return const Action(GetCliteleAction.action);
  }
  static Action onJumpDetail(){
    return Action(GetCliteleAction.jumpDetail);
  }
}
