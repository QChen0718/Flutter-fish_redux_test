import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum CjcellAction { action,jumpdetail,updateData }

class CjcellActionCreator {
  static Action onAction() {
    return const Action(CjcellAction.action);
  }
  static Action onJumpDetail() {
    return Action(CjcellAction.jumpdetail);
  }
  static Action onUpdateData(String newstr) {
    return Action(CjcellAction.updateData,payload: newstr);
  }
}
