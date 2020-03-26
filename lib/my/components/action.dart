import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum HeaderviewAction { action }

class HeaderviewActionCreator {
  static Action onAction() {
    return const Action(HeaderviewAction.action);
  }
}
