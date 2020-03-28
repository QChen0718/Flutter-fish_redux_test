import 'package:fish_redux/fish_redux.dart';

import 'components/state.dart';

//TODO replace with your own action
enum UsersetAction { action, init }

class UsersetActionCreator {
  static Action onAction() {
    return const Action(UsersetAction.action);
  }
  static Action onInit(List<ItemState> items) {
    return Action(UsersetAction.init,payload: items);
  }
}
