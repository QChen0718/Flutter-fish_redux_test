import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum MarketingListcellAction { action }

class MarketingListcellActionCreator {
  static Action onAction() {
    return const Action(MarketingListcellAction.action);
  }
}
