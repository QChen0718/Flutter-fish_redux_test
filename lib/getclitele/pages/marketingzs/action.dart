import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum MarketingZSAction { action }

class MarketingZSActionCreator {
  static Action onAction() {
    return const Action(MarketingZSAction.action);
  }
}
