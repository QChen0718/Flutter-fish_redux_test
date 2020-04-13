import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum ForwardingZSAction { action }

class ForwardingZSActionCreator {
  static Action onAction() {
    return const Action(ForwardingZSAction.action);
  }
}
