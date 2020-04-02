import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum MarketingCluesAction { action }

class MarketingCluesActionCreator {
  static Action onAction() {
    return const Action(MarketingCluesAction.action);
  }
}
