import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum HotFinancialWordeCellAction { action, jumpPosterDetail }

class HotFinancialWordeCellActionCreator {
  static Action onAction() {
    return const Action(HotFinancialWordeCellAction.action);
  }
  static Action onJumpPosterDetail(){
    return Action(HotFinancialWordeCellAction.jumpPosterDetail);
  }
}
