import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum CjzbAction { action,onjumpDetail,updateData }

class CjzbActionCreator {
  static Action onAction() {
    return const Action(CjzbAction.action);
  }
  static Action onJumpDetail() {
    return Action(CjzbAction.onjumpDetail);
  }
  static Action onUpdateData(String newtitle){
    return Action(CjzbAction.updateData);
  }
}
